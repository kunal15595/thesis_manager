var chat = {}



chat.fetchMessage = function () {
	
	$.ajax({
		url: 'ajax/chat.php',
		type: 'post',
		data: { method: 'fetch' },
		success: function(data) {
			$('.chat .messages').html(data);
			
		}
	});
}

chat.throwMessage = function(message) {
	var post_to = $('.select').val();
	// post_to = select_value;
	// alert(message);
	// alert(post_to);
	if ($.trim(message).length!=0) {
		$.ajax({
			url:'ajax/chat.php',
			type: 'post',
			data: { method: 'throw', message: message, post_to: post_to },
			success: function(data) {
				// alert(data);
				chat.fetchMessage();
				// chat.entry.val('');
			}
		});
			
	}
}



$(function() 
{ $('.entry').on('keydown', 
	function(e) 
	{ 
		// alert("ok");
		if(e.which===13 && e.shiftKey === true){
			// alert("ok");
			// alert($('.entry').val());
			alert("Notice posted!!")
			//throw message
			chat.throwMessage($('#posting').val());
			e.defaultPrevented ;
		}
	});

});

// chat.interval = setInterval(chat.fetchMessage, 50000);
// chat.fetchMessage();
chat.interval = setInterval(chat.fetchMessage, 50000);
chat.fetchMessage();
