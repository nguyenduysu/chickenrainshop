<?php echo $this->Form->create('Book', array('action' => 'get_keyword')); ?>
<?php echo $this->Form->input('keyword', array('label' => '', 'placeholder' => 'Tìm kiếm')); ?>
<?php echo $this->Form->end('Search'); ?>

<!-- hiển thị kết quả tìm kiếm -->
<?php if($notFound == true && isset($results)): ?>
	<?php echo $this->element('books', array('books' => $results)); ?>
	<?php echo $this->element('pagination', array('object' => 'quyển sách')); ?>
<?php elseif($notFound == false): ?>
	<?php echo 'Không tìm thấy kết quả tìm kiếm'; ?>
<?php endif ?>
<!-- end hiển thị kết quả tìm kiếm -->