$(window).load(function() {
	$('.chat').hide();
	$('.entry').hide();
	
});

$(document).ready(function() {
	var select_value='std';
	
	$('#view').click(function() {
		$('.chat').show();
		$('.entry').hide();
		$('#view').prop('disabled', true);
		$('#chat').prop('disabled', false);
	});
	$('#chat').click(function() {
		
		$('.entry').show();
		$('.chat').hide();
		$('#chat').prop('disabled', true);
		$('#view').prop('disabled', false);
	});

	// $('.entry').keyup(function(e) {
	// 	alert($('#posting').val());
	// });


	$('#std, #adm, #fac, #all, #stdme').click(function() {
		select_value = $(this).val();
		$('.select').prop(value, select_value);
		//alert(select_value);
		//alert($('.select').val());
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

