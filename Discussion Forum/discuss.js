// $(document).load(function() {
// 	var counter = 0;
// });

$(document).ready(function() {
	
	if (1) {
		width_l = (0.2*$('#adminVMenu').parent().width());
		$('#adminVMenu').animate({width: width_l/10}, 30);
		$('#adminVMenu').animate({width: width_l}, 1000);
		width_r = (0.75*$('#rightPanel').parent().width());
		$('#rightPanel').animate({width: width_r/10}, 30);
		$('#rightPanel').animate({width: width_r}, 1000);
		counter++;
	}
	
});
