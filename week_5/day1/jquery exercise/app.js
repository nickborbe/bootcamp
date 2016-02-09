$(document).ready(function () {
	$('.js-fade').on('click', function(){
		$('body > *').not(".js-fade").fadeToggle(2000);});
});

$(document).ready(function () {
	$('.js-unicorn').on('click', function(){
		$('.colors').addClass("unicorn");});
});