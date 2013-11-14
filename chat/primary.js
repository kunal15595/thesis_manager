$(window).load(function() {
	$('.result').hide();
	$('.chat').hide();
	
});

$(document).ready(function() {
	var select_value=std;
	
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
		

		$.post('search.php', {search_term:search_term, select_value:select_value}, function(data) {
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

	$('#std, #adm, #fac').click(function() {
		select_value = $(this).val();
		//alert(select_value);
		//alert($('.select').val());
	});

	$(document).click(function() {
		$('.result').hide();
	  	$('.dropdown').hide();
	});

	$('#chat').click(function() {
		if ($('#chat').val()=='Start') {
			//$('.autosuggest').prop('value','');
			$('.chat').show();
			$('#chat').prop('value','Stop');
			$('.autosuggest').prop('disabled',true);
		} else {
			$('.autosuggest').prop('disabled',false);
			$('#chat').prop('value','Start');
			$('#chat').prop('disabled', true);
			$('.chat').hide();
		}
	});
	

	$('#exit').click(function() {
		var path='ll';
		alert(path);
		//var name = '<%= session.getAttribute("userName") %>';
		alert($_SESSION['user_type']);
		// if ($_SESSION['user_type']=='adm') {
		// 	path = '../Backend/index.php';
		// }else if ($_SESSION['user_type']=='fac') {
		// 	path = '../faculty/index.php';
		// }else if ($_SESSION['user_type']=='std') {
		// 	path = '../index.php';
		// }else{
		// 	path = '../login.php';	
		// }
		alert(path);
		window.location = path;

	});

});

