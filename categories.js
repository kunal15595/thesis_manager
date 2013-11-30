
$(document).ready(function() {
	

	$('.result1 li').click(function() {
		var result1_value = $(this).text();
		// alert(result1_value);
		$('#cat1').prop('value',result1_value);
		
	});
$('.result2 li').click(function() {
		var result2_value = $(this).text();
		// alert(result2_value);
		$('#cat2').prop('value',result2_value);
		
	});
$('.result3 li').click(function() {
		var result3_value = $(this).text();
		// alert(result3_value);
		$('#cat3').prop('value',result3_value);
		
	});

});

