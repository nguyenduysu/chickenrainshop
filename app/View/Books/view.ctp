<div class="books view">
<h2><?php echo __('Book'); ?></h2>
	<dl>
		<dt><?php echo __('Title'); ?></dt>
		<dd>
			<?php echo h($book['Book']['title']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Image'); ?></dt>
		<dd>
			<?php echo $this->Html->image($book['Book']['image'], array('width' => '150px', 'height' => '200px')); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Info'); ?></dt>
		<dd>
			<?php echo h($book['Book']['info']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Price'); ?></dt>
		<dd>
			<?php echo h($book['Book']['price']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Sale Price'); ?></dt>
		<dd>
			<?php echo h($book['Book']['sale_price']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Pages'); ?></dt>
		<dd>
			<?php echo h($book['Book']['pages']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Publisher'); ?></dt>
		<dd>
			<?php echo h($book['Book']['publisher']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Publish Date'); ?></dt>
		<dd>
			<?php echo h($book['Book']['publish_date']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Comment Count'); ?></dt>
		<dd>
			<?php echo h($book['Book']['comment_count']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Published'); ?></dt>
		<dd>
			<?php echo h($book['Book']['published']); ?>
			&nbsp;
		</dd>
	</dl>
</div>

<div class="related">
	<h3><?php echo __('Related Writers'); ?></h3>
	<?php if (!empty($book['Writer'])): ?>
		<?php foreach ($book['Writer'] as $writer): ?>
			<?php echo $this->Html->link($writer['name'],'/tac-gia/'.$writer['slug']); ?>
		<?php endforeach; ?>
	<?php endif; ?>
</div>

<div class="related">
	<h3><?php echo __('Related Books'); ?></h3>
	<?php if (!empty($related_books)): ?>
		<?php echo $this->element('books', array('books' => $related_books)); ?>
	<?php endif; ?>
</div>

<div class="related">
	<h3><?php echo __('Comments'); ?></h3>
	<?php if (!empty($comments)): ?>
		<?php foreach ($comments as $comment): ?>
			<?php echo $comment['User']['username']. ' đã gửi: '; ?>
			<?php echo $comment['Comment']['content']; ?> <br>
		<?php endforeach; ?>
	<?php endif; ?>
</div>

<!-- Gửi comment -->
<div class="comments form">
	<?php if(isset($errors)): ?>
		<?php foreach ($errors as $errors): ?>
			<?php echo $errors[0]; ?>
		<?php endforeach ?>
	<?php endif ?>
	<?php echo $this->Form->create('Comment', array('action' => 'add', 'novalidate' => true)); ?>
		<fieldset>
			<legend><?php echo __('Add Comment'); ?></legend>
		<?php
			echo $this->Form->input('user_id', array('required' => false, 'label' => '', 'type' => 'text', 'value' => 3, 'hidden' => 'true'));
			echo $this->Form->input('book_id', array('required' => false, 'label' => '', 'type' => 'text', 'value' => $book['Book']['id'], 'hidden' => 'true'));
			echo $this->Form->input('content');
		?>
		</fieldset>
	<?php echo $this->Form->end(__('Submit')); ?>
</div>
<!-- end Gửi Comment -->