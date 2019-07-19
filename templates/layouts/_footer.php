			</main>
				
			<footer class="footer" id="footer" itemscope itemtype="http://schema.org/WPFooter">
				<div class="footer_ribbon">
					<div class="fs-row">
						<div class="fs-cell">
							<div class="footer_ribbon_inner">
 								<?php
									include_with("address.php", $site["address"]);
								?>
							</div>
						</div>
					</div>
				</div>
			</footer>
		</div>

		<div class="js-menu menu" id="menu">
			<?php
				include_with("navigation/main.php", [
					"modifier" => "sm",
					"title" => "Site",
					"label" => "Menu",
					"icon" => "caret_down"
				]);
			?>

			<a class="header_email_link" href="mailto:mimoduo@gmail.com">
				<span class="header_email_link_inner">
					<span class="header_email_link_icon"><?=icon("mail")?></span>
					<span class="header_email_link_label">Email Us</span>
				</span>
			</a>

			<button class="js-swap js-menu-close menu_close" data-swap-target=".menu" data-swap-linked="menu" aria-label="Close Menu">
				<span class="menu_close_icon"><?=icon("close")?></span>
 				<span class="menu_close_label">Close Menu</span>
			</button>
		</div>

		<script>
			var WWW_ROOT = "<?=WWW_ROOT?>";
			var STATIC_ROOT = "<?=STATIC_ROOT?>";
		</script>
		<script src="<?=STATIC_ROOT?>js/site.js?<?=filemtime(SITE_ROOT."js/site.js")?>"></script>
	</body>
</html>