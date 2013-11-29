$(window).load(function() {
	$('.result').hide();
	
});

$(document).ready(function() {
	var select_value='fac';
	
	$(function() 
	{ $('.autosuggest').on('keyup', 
		function(e) 
		{ 
			if ($('.autosuggest').val()='') {
				$('.result').hide();
			  	$('.dropdown').hide();
			}
		});

	});

	$('.autosuggest').keyup(function(e) {

		if ($('.autosuggest').val()!='') {
			$('.result').show();
			$('.dropdown').show();
		}
		else{
			$('.result').hide();
	  		$('.dropdown').hide();
		}
		var search_term = $(this).prop('value');
		//alert($('.select').val());
		

		$.post('ajax.php', {search_term:search_term}, function(data) {
			$('.result').html(data);

			$('.result li').click(function() {
				var result_value = $(this).text();
				//alert(result_value);
				$('.autosuggest').prop('value',result_value);
				$('.result').html('');
				$('#chat').prop('disabled', false);
			});
		});
	});

	$('.autosuggest').click(function() {
		select_value = $('.select').val();
		var result_value = $(this).text();
		//alert(result_value);
		$('.autosuggest').prop('value',result_value);
		$('.result').html('');
	});

	$(document).click(function() {
		$('.result').hide();
	  	$('.dropdown').hide();
	});

	
});

