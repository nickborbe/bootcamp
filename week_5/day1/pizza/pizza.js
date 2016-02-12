// Write your Pizza Builder JavaScript in this file.

	
	$('.btn-pepperonni').on('click', function(){
  		$('.pep').toggle('active');
});

	$('.btn-mushrooms').on('click', function(){
  		$('.mushroom').toggle('active');
});

	$('.btn-green-peppers').on('click', function(){
  		$('.green-pepper').toggle();
});

	$('.btn-crust').on('click', function(){
  		$('.crust').addClass('crust-gluten-free');
});

		$('.btn-sauce').on('click', function(){
  		$('.sauce').addClass('sauce-white');
});