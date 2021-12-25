// Preloader js
$(window).on('load', function () {
	$('.preloader').addClass('d-none');
});

(function($) {
	'use strict';

	//slider
	$('.slider').not('.slick-initialized').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		dots: true,
		arrows: false
	});

})(jQuery);

const selectedTags = new Set();

function tagClicked(checkbox) {
	const checkboxWrapper = document.getElementById("tag-checkbox-wrapper-" + checkbox.name);
	if (checkbox.checked) {
		selectedTags.add(checkbox.name);
		checkboxWrapper.classList.add("checked");
	} else {
		selectedTags.delete(checkbox.name);
		checkboxWrapper.classList.remove("checked");
	}

	var numberOfHiddenCards = 0;
	const allCards = document.querySelectorAll(".team-card");
	allCards.forEach(card => {
		var matchesQuery = true;
		const cardTags = card.querySelectorAll(".tag-item");
		
		selectedTags.forEach(tag => {
			var cardContainsTag = false;
			cardTags.forEach(cardTag => {
				if (cardTag.innerHTML === tag) {
					cardContainsTag = true;
				}
			});
			if (!cardContainsTag) {
				matchesQuery = false;
			}
		});
		
		if (matchesQuery) {
			card.classList.remove("hidden");
		} else {
			card.classList.add("hidden");
			numberOfHiddenCards++;
		}
	});

	const noMembersMessage = document.getElementById("no-members-message");
	if (allCards.length === numberOfHiddenCards) {
		noMembersMessage.classList.remove("hidden");
	} else {
		noMembersMessage.classList.add("hidden");
	}
}