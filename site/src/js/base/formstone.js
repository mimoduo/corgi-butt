/*-------------------------------------------
	Formstone
-------------------------------------------*/

Site.modules.Formstone = (function($, Site) {

	var prev_icon = "chevron_left";
	var next_icon = "chevron_right";
	var BackgroundOptions = {
		labels: {
			play: "Play",
			pause: "Pause"
		},
		icons: {
			play: Site.icon("play"),
			pause: Site.icon("pause")
		}
	};

	function init() {
		$(".js-background").on("loaded.background", function() {
			$(this).addClass("fs-background-loaded");
			backgroundVideo(this);
		}).background();
		$(".js-carousel").carousel();
		$(".js-swap").swap();

		carouselPagination($(".js-carousel"));
	}

	function backgroundVideo(element) {
		var $background = $(element);

		if ($background.hasClass("js-background-video")) {
			if ($background.find(".fs-background-controls").length == 0) {
				$("<div class='fs-background-controls-block'><div class='fs-background-controls'><button class='fs-background-control fs-background-control-play fs-background-control-active' aria-pressed='true' aria-label='play'><span class='fs-background-control-icon'>" + BackgroundOptions.icons.play + "</span><span class='fs-background-control-label'>" + BackgroundOptions.labels.play + "<span></button><button class='fs-background-control fs-background-control-pause' aria-pressed='false' aria-label='pause'><span class='fs-background-control-icon'>" + BackgroundOptions.icons.pause + "</span><span class='fs-background-control-label'>" + BackgroundOptions.labels.pause + "<span></button></div></div>").appendTo($background);
			}

			$background.find(".fs-background-control-play").on("click", onPlayClick);
			$background.find(".fs-background-control-pause").on("click", onPauseClick);
		}
	}

	function onPlayClick() {
		var $background = $(this).closest(".js-background-video");

		$background.background("play");
		$background.find(".fs-background-control-play")
			.addClass("fs-background-control-active")
			.attr("aria-pressed", "true");
		$background.find(".fs-background-control-pause")
			.removeClass("fs-background-control-active")
			.attr("aria-pressed", "false");
	}

	function onPauseClick() {
		var $background = $(this).closest(".js-background-video");

		$background.background("pause");
		$background.find(".fs-background-control-pause")
			.addClass("fs-background-control-active")
			.attr("aria-pressed", "true");
		$background.find(".fs-background-control-play")
			.removeClass("fs-background-control-active")
			.attr("aria-pressed", "false");
	}

	function carouselPagination($element) {
		$element.each(function() {
			var $previous_button = $(this).find(".fs-carousel-control_previous");
			var previous_text = $previous_button.text();
			var $next_button = $(this).find(".fs-carousel-control_next");
			var next_text = $next_button.text();

			$previous_button.html("<span class='fs-carousel-control-icon'>" + Site.icon(prev_icon) + "</span><span class='fs-carousel-control-label'>" + previous_text + "</span>");
			$next_button.html("<span class='fs-carousel-control-icon'>" + Site.icon(next_icon) + "</span><span class='fs-carousel-control-label'>" + next_text + "</span>");
		});
	}

	Site.onInit.push(init);

	return {};

})(jQuery, Site);
