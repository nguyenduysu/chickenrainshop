<div class="books index">
	<h2><?php echo __('Sách mới'); ?></h2>
	<h4><?php echo $this->Html->link('Xem thêm', '/sach-moi'); ?></h4>
	
	<?php echo $this->element('books', array('books' => $books)); ?>
</div>
<?php 
	$categories = $this->requestAction('/categories/menu');
?>
<?php if (!empty($categories)): ?>
	<?php foreach ($categories as $category): ?>
		<?php echo $this->Html->link($category['Category']['name'], '/danh-muc/'.$category['Category']['slug']); ?><br>
	<?php endforeach ?>
<?php endif ?>