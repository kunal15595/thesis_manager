$(document).ready(function() {
	// alert("fsk");
	
	add_width_l = (0.2*$('#adminVMenu').parent().width());
	$('#adminVMenu').animate({width: add_width_l/10}, 30);
	$('#adminVMenu').animate({width: add_width_l}, 400);
	add_width_r = (0.24*$('#rightPanel').parent().width());
	$('#rightPanel').animate({width: add_width_r/10}, 30);
	$('#rightPanel').animate({width: add_width_r}, 400);
	
});
