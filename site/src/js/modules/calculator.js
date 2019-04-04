/*-------------------------------------------
	Calculator
-------------------------------------------*/

Site.modules.Calculator = (function($, Site) {

	var $results;
	var base;
	var content;
	var items;
	var total;

	function init() {
		if ($(".calculator").length) {
			$results = $(".calculator_results");
			base = `
				<div class="calculator_result_item">
					<span class="calculator_result_item_label">Basic Website</span>
					<span class="calculator_result_item_value">+10</span>
				</div>
			`;
			content = `
				<div class="calculator_result_item">
					<span class="calculator_result_item_label">Total</span>
					<span class="calculator_result_item_value">$800</span>
				</div>
			`;
			total = 0;
			
			updatePrice();
			bindUI();
		}
	}

	function bindUI() {
    $(".calculator_item_checkbox").on("click", updatePrice);
	}

	function updatePrice() {
		content = "";
		total = 0;

		$(".calculator_item_checkbox").each(function() {
			if ($(this).is(":checked")) {
				var item = $(this).closest(".calculator_item_content");

				content += `
					<div class="calculator_result_item">
						<span class="calculator_result_item_label">${$(item).data("label")}</span>
						<span class="calculator_result_item_value">+${$(item).data("value")}</span>
					</div>
				`;

				total += $(item).data("value");
			}
		});

		total += 10;

		content += `
			<div class="calculator_result_item">
				<span class="calculator_result_item_label">Total</span>
				<span class="calculator_result_item_value">$80 * ${total} Hours = <strong>$${total * 80}</strong></span>
			</div>
		`;

		$results.html(base + content);
	}

	Site.onInit.push(init);

	return {};

})(jQuery, Site);
