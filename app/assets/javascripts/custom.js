$(document).ready(function() {
	$( ".image" ).dblclick(function() {		
	  $(this).children('.like').removeClass("hide").addClass("show");
	  setTimeout(function() {
	  	$('.like').removeClass("show").addClass("hide");
	  }, 1000);
	  $(this).parent().find(".post_details").find("span[id^='like_button']").find("a").click()
	});
})
