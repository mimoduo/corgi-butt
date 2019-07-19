<?php
	// Optional "modifier", "icon", "header", "print", "link"

	$logo_classes = [
		"logo"
	];

	if (!empty($modifier)) {
		$logo_classes[] = "logo_".$modifier;
	}

	$logo_classes[] = "logo_icon";

	$link = !empty($link) ? $link : WWW_ROOT;
?>
<div class="<?=implode(" ", $logo_classes)?>" itemscope itemtype="http://schema.org/<?=$site["schema_type"]?>">
	<a class="logo_link" itemprop="url" href="<?=$link?>">
		<span class="logo_link_icon">
			<img class="logo_link_image" src="<?=STATIC_ROOT?>images/logo.svg" alt="a big corgi butt" />
		</span>
		<span class="logo_link_label"><?=$site["title"]?></span>
	</a>
</div>