<?php
App::uses('AppController', 'Controller');
/**
 * Books Controller
 *
 * @property Book $Book
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class BooksController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator', 'Session');
	// public $helpers = array('Html', 'Form');

	// example truy van
	function truyvan() {
		// $books = $this->Book->find('all', array(
			// 'fields' => array('id', 'title'),
			// 'limit' => 5,
			// 'order' => array('id' => 'ASC'),
			// 'recursive' => 2        // -1: only data of book                 0: book and table what book belongsTo    
			                        //  1: all table acssociate with book    2: all 'table' acssociate with book and other table associate with 'table'
		// ));
		$books = $this->Book->find('first', array(
			'contain' => array(
				'Writer',
				'Comment' => array(
					'fields' => 'content'
				)
			)
		));
		echo '<meta charset="UTF-8">';
		pr($books);
		exit;
	}

/**
 * index method
 * dislpay 10 book latest
 * @return void
 */
	public function index() {
		// $this->Book->recursive = 0;
		// $this->set('books', $this->Paginator->paginate());
		$books = $this->Book->latest();
		$this->set('books', $books);
	}

/**
 * latest_books method
 * dislpay all books and sort by created from new to old
 * Paginate
 * @return void
 */

	public function latest_books() {
		$this->paginate = array(
			'fields' => array('id', 'title', 'slug', 'image', 'sale_price'),
			'order' => array('created' => 'desc'),
			'limit' => 5,
			'contain' => array(
				'Writer' => array('name', 'slug')
			),
			'conditions' => array('published' => 1),
			'paramType' => 'querystring'   // đưa định dạng trên url về kiểu get
		);
		$books = $this->paginate();
		$this->set('books', $books);
	}

/**
 * get_keyword
 */	 
	public function get_keyword() {
		if($this->request->is('post')) {
			$this->Book->set($this->request->data);
			$keyword = $this->request->data['Book']['keyword'];
			$this->redirect(array('action' => 'search', 'keyword' => $keyword));
		}
	}

/**
 * tìm kiếm sách
 */	 
	public function search() {
		$notFound = true;
		$haveKeyword = true;
		if(!empty($this->request->params['named']['keyword'])) {
			$keyword = $this->request->params['named']['keyword'];
			$this->paginate = array(
				'fields' => array('title', 'image', 'sale_price', 'slug'),
				'contain' => array(
					'Writer' => array('name', 'slug')
				),
				'order' => array('Book.created' => 'desc'),
				'limit' => 5,
				'conditions' => array(
					'Book.published' => 1,
					'or' => array(
						'Book.title like' => '%'.$keyword.'%',
						'Writer.name like' => '%'.$keyword.'%' 
					),
					
				),
				'joins' => array(
					array(
						'table' => 'books_writers',
						'alias' => 'BookWriter',
						'conditions' => 'BookWriter.book_id = Book.id'
					),
					array(
						'table' => 'writers',
						'alias' => 'Writer',
						'conditions' => 'BookWriter.writer_id = Writer.id'
					)
				),
				'paramType' => 'querystring'
			);
			$books = $this->paginate('Book');
			// $books = $this->Book->find('all', );
			if(!empty($books)) {
				$this->set('results', $books);
			} else {
				$notFound = false;
			}
		} else {
			$this->Session->setFlash('Bạn phải nhập ký tự để tìm kiếm');
		}
		$this->set('notFound', $notFound);
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($slug = null) {
		$options = array(
			'conditions' => array('Book.slug' => $slug),
			'contain' => array(
				'Writer' => array('name', 'slug')
			)
		);
		$book = $this->Book->find('first', $options);
		if (empty($book)) {
			throw new NotFoundException(__('Quyển sách này không tồn tại'));
		}
		$this->set('book', $book);

		// hiển thị comment
		$this->loadModel('Comment');
		$comments = $this->Comment->find('all', array(
			'conditions' => array(
				'book_id' => $book['Book']['id']
			),
			'order' => array('Comment.created' => 'asc'),
			'contain' => array(
				'User' => array('username')
			)
		));
		$this->set('comments', $comments);

		// hiển thị sách liên quan
		$related_books = $this->Book->find('all', array(
			'fields' => array('title', 'image', 'sale_price', 'slug'),
			'conditions' => array(
				'category_id' => $book['Book']['category_id'],
				'Book.id <>' => $book['Book']['id'],
				'published' => 1
			),
			'limit' => 5,
			'order' => 'rand()',
			'contain' => array(
				'Writer' => array('name', 'slug')
			)
		));
		$this->set('related_books', $related_books);

		// báo lỗi xác thực dữ liệu khi gửi comment
		if($this->Session->check('comment_errors')) {
			$errors = $this->Session->read('comment_errors');
			$this->set('errors', $errors);
			$this->Session->delete('comment_errors');
		}
	}

/**
 * update commment count trong books
 *
 * @return void
 */	
	public function update_comment() {
		$books = $this->Book->find('all', array(
			'fields' => array('id'),
			'contain' => 'Comment'
		));
		foreach ($books as $book) {
			if(count($book['Comment']) > 0) {
				$this->Book->updateAll(
					array('comment_count' => count($book['Comment'])),
					array('Book.id' => $book['Book']['id'])
				);
			}
		}
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Book->create();
			if ($this->Book->save($this->request->data)) {
				$this->Session->setFlash(__('The book has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The book could not be saved. Please, try again.'));
			}
		}
		$categories = $this->Book->Category->find('list');
		$writers = $this->Book->Writer->find('list');
		$this->set(compact('categories', 'writers'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Book->exists($id)) {
			throw new NotFoundException(__('Invalid book'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Book->save($this->request->data)) {
				$this->Session->setFlash(__('The book has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The book could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Book.' . $this->Book->primaryKey => $id));
			$this->request->data = $this->Book->find('first', $options);
		}
		$categories = $this->Book->Category->find('list');
		$writers = $this->Book->Writer->find('list');
		$this->set(compact('categories', 'writers'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Book->id = $id;
		if (!$this->Book->exists()) {
			throw new NotFoundException(__('Invalid book'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Book->delete()) {
			$this->Session->setFlash(__('The book has been deleted.'));
		} else {
			$this->Session->setFlash(__('The book could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
