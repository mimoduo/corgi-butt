<div class="spotlight">
	<div class="spotlight_media">
		<?php
			include_with("background.php", [
				"class" => "spotlight_poster",
				"image" => $image,
				"sources" => [
					"0px" => "wide-sml-",
					"740px" => "wide-med-",
					"740px" => "wide-lrg-"
				]
			]);
		?>
	</div>
  <div class="spotlight_wrapper">
    <div class="fs-row">
      <div class="fs-cell">
        <div class="spotlight_inner">
          <div class="spotlight_content">
            <header class="spotlight_header">
              <h2 class="spotlight_title"><?=$title?></h2>
            </header>
            <div class="spotlight_body">
              <div class="spotlight_description">
                <?=nl2br($description)?>
              </div>
            </div>
            <footer class="spotlight_links">
							<a class="spotlight_link" href="#">
								<span class="spotlight_link_inner">
									<span class="spotlight_link_label">Your Idea, Our Email</span>
									<span class="spotlight_link_icon" aria-hidden="true">
										<?=icon("mail")?>
									</span>
									<span class="spotlight_link_background" aria-hidden="true">
										<?=icon("paw")?>
									</span>
								</span>
							</a>
            </footer>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>