<div class="writers view">
<h2><?php echo __('Writer'); ?></h2>
	<dl>
		<dt><?php echo __('Name'); ?></dt>
		<dd>
			<?php echo h($writer['Writer']['name']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Biography'); ?></dt>
		<dd>
			<?php echo h($writer['Writer']['biography']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="related">
	<h3><?php echo __('Related Books'); ?></h3>
	<?php if (!empty($books)): ?>
		<?php echo $this->element('books', array('books' => $books)); ?>
		<?php echo $this->element('pagination', array('object' => 'quyển sách')); ?>
	<?php endif; ?>
</div>
