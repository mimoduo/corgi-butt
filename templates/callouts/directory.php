<div class="directory">
	<div class="fs-row">
		<div class="fs-cell">
			<div class="directory_inner">
				<div class="directory_body">
					<ul class="directory_items" role="list" itemscope itemtype="http://schema.org/ItemList">
						<?php
							foreach ($items as $item) {
						?>
						<li class="directory_item" itemscope itemprop="itemListElement" itemtype="http://schema.org/ListItem">
							<meta itemprop="position" content="{{ loop.index }}">
							<div class="directory_item_inner" itemscope itemtype="http://schema.org/Person">
								<?php
									if (!empty($item["image"])) {
								?>
								<figure class="directory_item_figure">
									<span class="directory_item_figure_icon"><?=icon("paw")?></span>
									<?php
										include_with("image.php", [
											"class" => "directory_item",
											"image" => BigTree::prefixFile($item["image"], "square-xsml-")
										]);
									?>
								</figure>
								<?php
									 }
								?>
								<div class="directory_item_content">
									<header class="directory_item_header">
										<h3 class="directory_item_name" itemprop="name"><?=$item["name"]?></h3>
										<?php
											if (!empty($item["title"])) {
										?>
										<div class="directory_item_title"><?=$item["title"]?></div>
										<?php
											}
										?>
									</header>
									<div class="directory_item_body">
										<?php
											if (!empty($item["description"])) {
										?>
										<div class="directory_item_description" itemprop="description">
											<?=nl2br($item["description"])?>
										</div>
										<?php
											 }
										?>
									</div>
								</div>
							</div>
						</li>
						<?php
							 }
						?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>