<?php foreach($books as $book): ?>
		<?php echo $this->Html->link($book['Book']['title'], '/'.$book['Book']['slug']); ?> <br>
		<!-- <?php echo $book['Book']['image']; ?> <br> -->
		<?php echo $this->Html->image($book['Book']['image'], array('width' => '150px', 'height' => '200px')); ?> <br>
		Giá bán: <?php echo $this->Number->currency($book['Book']['sale_price'], ' VND', array(
				'places' => 0,
				'wholePosition' => 'after'
			)); ?> <br>
		<?php foreach($book['Writer'] as $writer): ?>
			<?php echo $writer['name']; ?><br>
		<?php endforeach; ?>
		<br><hr><br>
	<?php endforeach; ?>