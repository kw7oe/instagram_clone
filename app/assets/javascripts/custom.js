var doubleClickToLike = function() {
	$( ".image" ).dblclick(function() {		
	  $(this).children('.like').removeClass("hide").addClass("show");
	  setTimeout(function() {
	  	$('.like').removeClass("show").addClass("hide");
	  }, 1000);
	  $(this).parent().find("span[id^='like_button']").find("a").click()
	});
};

$(document).ready(doubleClickToLike)
document.addEventListener('turbolinks:load', doubleClickToLike)
