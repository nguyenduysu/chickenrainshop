<div class="writers index">
	<h2><?php echo __('Writers'); ?></h2>
	<p><?php echo $this->Paginator->sort('name', 'Xếp theo thứ tự ngược lại'); ?></p>
	<?php foreach ($writers as $writer): ?>
		<?php echo $writer['Writer']['name']; ?> <br>
	<?php endforeach ?>
	<br>
	<?php echo $this->element('pagination', array('object' => 'tác giả')); ?>
</div>
