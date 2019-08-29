<div class="coupons form">
<?php echo $this->Form->create('Coupon'); ?>
	<fieldset>
		<legend><?php echo __('Edit Coupon'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('code');
		echo $this->Form->input('percent');
		echo $this->Form->input('description');
		echo $this->Form->input('time_start');
		echo $this->Form->input('time_end');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Coupon.id')), array('confirm' => __('Are you sure you want to delete # %s?', $this->Form->value('Coupon.id')))); ?></li>
		<li><?php echo $this->Html->link(__('List Coupons'), array('action' => 'index')); ?></li>
	</ul>
</div>
