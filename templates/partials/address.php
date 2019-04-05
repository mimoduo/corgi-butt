<div class="meta" itemscope itemtype="http://schema.org/{{ vars.schemaType }}">
	<div class="logo logo_footer" itemscope itemtype="http://schema.org/<?=$site["schema_type"]?>">
		<a class="logo_link" itemprop="url" href="<?=$link?>">
			<span class="logo_link_icon">
				<img class="logo_link_image" src="<?=STATIC_ROOT?>images/logo.svg" alt="" />
			</span>
			<span class="logo_link_label"><?=$site["title"]?></span>
		</a>
	</div>
	<div class="meta_details" itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress">
		<span class="meta_detail meta_detail_address">
			<span class="meta_detail_icon"><?=icon("place")?></span>
			<span class="meta_detail_label meta_detail_label_address">
				<span class="meta_detail_address_group">
					<span class="meta_detail_address_street" itemprop="streetAddress"><?=$street?></span>
				</span>
				<span class="meta_detail_address_group">
					<span class="meta_detail_address_city" itemprop="addressLocality"><?=$city?></span>
					<span class="meta_detail_address_state" itemprop="addressRegion"><?=$state?></span>
					<span class="meta_detail_address_zip" itemprop="postalCode"><?=$zip?></span>
				</span>
			</span>
		</span>
		<?php
			if (!empty($email)) {
		?>
		<span class="meta_detail meta_detail_email">
			<span class="meta_detail_icon"><?=icon("mail")?></span>
			<a class="meta_detail_label meta_detail_label_email" href="mailto:<?=$email?>" itemprop="email"><?=$email?></a>
		</span>
		<?php
			}
		?>
		<span class="meta_detail">
			<div class="copyright">
				<p class="copyright_info">&copy; <span class="copyright_holder" itemprop="copyrightHolder" itemscope="" itemtype="http://schema.org/<?=$site["schema_type"]?>"><?=$site["title"]?></span> <span <span class="copyright_year" itemprop="copyrightYear"><?=date("Y")?></span></p>
			</div>
		</span>
	</div>
</div>