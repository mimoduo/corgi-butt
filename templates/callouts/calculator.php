<div class="calculator" id="calculator">
  <span class="calculator_icon"><?=icon("paw")?></span>
  <div class="fs-row">
    <div class="fs-cell">
      <div class="calculator_inner">
        <header class="calculator_header">
          <h2 class="calculator_title">Calculator</h2>
        </header>
        <div class="calculator_body">
          <p class="calculator_caption"><?=$caption?></p>
          <div class="calculator_content">
            <div class="calculator_items">
              <?php
								foreach ($items as $item) {
							?>
							<div class="calculator_item">
								<div class="calculator_item_body">
									<figure class="calculator_item_figure">
										<?php
											include_with("image.php", [
												"class" => "calculator_item",
												"image" => BigTree::prefixFile($item["image"], "square-xsml-")
											]);
										?>
									</figure>
									<div class="calculator_item_content" data-label="<?=$item["label"]?>" data-value="<?=$item["value"]?>">
										<div class="calculator_item_title">
											<span class="calculator_item_title_label"><?=$item["label"]?></span>
											<span class="calculator_item_title_hours">+<?=$item["value"]?> hour<?php if ($item["value"] > 1) {?>s<?php } ?></span>
										</div>
										<p class="calculator_item_caption"><?=$item["caption"]?></p>
										<div class="calculator_item_field">
											<input class="calculator_item_checkbox" id="<?=$item["label"]?>" type="checkbox" value="<?=$item["label"]?>" />
											<span class="calculator_item_hint"></span>
											<label class="calculator_item_label" for="<?=$item["label"]?>">Add/Remove <?=$item["label"]?></label>
											<span class="calculator_item_action" aria-hidden="true"></span>
										</div>
									</div>
								</div>
							</div>
							<?php
								}
							?>
            </div>
            <div class="calculator_results">
              <div class="calculator_results_body">
              </div>
              <a class="calculator_results_link" href="#"></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>