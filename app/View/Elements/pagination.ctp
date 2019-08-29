<p>
	<?php echo $this->Paginator->counter('Trang {:page}/{:pages}, hiển thị {:current} '.$object.' trong tổ số {:count} '.$object); ?>
</p>
<p>
	<?php echo $this->Paginator->prev('Previous |') ?>
	<?php echo $this->Paginator->numbers(array('separator' => ' | ')); ?>
	<?php echo $this->Paginator->next('| Next') ?>
</p>