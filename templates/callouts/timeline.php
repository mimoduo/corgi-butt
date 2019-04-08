<div class="timeline">
  <div class="fs-row">
    <div class="fs-cell">
      <div class="timeline_inner">
        <div class="timeline_content">
          <header class="timeline_header">
            <h2 class="timeline_title"><?=$title?></h2>
            <p class="timeline_caption"><?=caption?></p>
            <a class="timeline_link" href="mailto:mimoduo@gmail.com">
							<span class="timeline_link_inner">
								<span class="timeline_link_label">Work With Us</span>
								<span class="timeline_link_icon" aria-hidden="true">
									<?=icon("mail")?>
								</span>
								<span class="timeline_link_background" aria-hidden="true">
									<?=icon("paw")?>
								</span>
							</span>
						</a>
          </header>
          <div class="timeline_body">
            <span class="timeline_label"><?=label?></span>
            <ol class="timeline_items">
              <?php
								foreach ($items as $key => $item) {
							?>
							<li class="timeline_item">
								<article class="timeline_item_article">
									<figure class="timeline_item_figure">
										<?php
											include_with("image.php", [
												"class" => "timeline_item",
												"image" => BigTree::prefixFile($item["image"], "square-thumb-")
											]);
										?>
									</figure>
									<div class="timeline_item_body">
										<header class="timeline_item_header">
											<h3 class="timeline_item_title">
												<span class="timeline_item_title_index"><?=$key?>.</span>
												<span class="timeline_item_title_label"><?=$item["title"]?></span>
											</h3>
										</header>
										<div class="timeline_item_caption">
											<?=nl2br($item["caption"])?>
										</div>
									</div>
								</article>
							</li>
							<?php
								}
							?>
            </ol>
            <span class="timeline_label">Your New Website has Launched 🚀</span>
          </div>
        </div>
        <footer class="timeline_footer">
					<a class="timeline_link" href="mailto:mimoduo@gmail.com">
						<span class="timeline_link_inner">
							<span class="timeline_link_label">Let's Start Your Timeline!</span>
							<span class="timeline_link_icon" aria-hidden="true">
								<?=icon("mail")?>
							</span>
							<span class="timeline_link_background" aria-hidden="true">
								<?=icon("paw")?>
							</span>
						</span>
					</a>
        </footer>
      </div>
    </div>
  </div>
</div>