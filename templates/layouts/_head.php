<?php
	/**
	 * @global array $bigtree
	 * @global array $site
	 */

	if (empty($bigtree["page"]["open_graph"]["image"])) {
		$bigtree["page"]["open_graph"]["image"] = $site["og_image_fallback"];
	}
?>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="mobile-web-app-capable" content="yes">

	<link rel="apple-touch-icon" sizes="180x180" href="<?=STATIC_ROOT?>favicons/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="<?=STATIC_ROOT?>favicons/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="<?=STATIC_ROOT?>favicons/favicon-16x16.png">
	<link rel="manifest" href="<?=STATIC_ROOT?>favicons/site.webmanifest">
	<link rel="mask-icon" href="<?=STATIC_ROOT?>favicons/safari-pinned-tab.svg" color="<?=$site["favicon_color"]?>">
	<link rel="shortcut icon" href="<?=STATIC_ROOT?>favicons/favicon.ico">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="<?=STATIC_ROOT?>favicons/mstile-144x144.png">
	<meta name="msapplication-config" content="<?=STATIC_ROOT?>favicons/browserconfig.xml">
	<meta name="theme-color" content="<?=$site["favicon_color"]?>">

	<?php BigTreeCMS::drawHeadTags($site["title"]); ?>
	<meta property="og:url" content="https:<?=BigTreeCMS::getLink($bigtree["page"]["id"])?>">

	<!-- Insert Fonts Here -->
	<link rel="stylesheet" href="<?=STATIC_ROOT?>css/site.css?<?=filemtime(SITE_ROOT."css/site.css")?>" media="all">
	<link href="https://fonts.googleapis.com/css?family=Permanent+Marker|Poppins:400,700" rel="stylesheet" media="all">

	<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-66664949-7"></script>
	<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());

	gtag('config', 'UA-66664949-7');
	</script>
</head>