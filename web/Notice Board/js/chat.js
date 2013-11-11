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
	
	if ($.trim(message).length!=0) {
		$.ajax({
			url:'ajax/chat.php',
			type: 'post',
			data: { method: 'throw', message: message },
			success: function(data) {
				alert(data);
				chat.fetchMessage();
				chat.entry.val('');
			}
		});
			
	}
}



 chat.entry = $('.chat .entry');

$(function() 
{ $('.chat .entry').on('keydown', 
	function(e) 
	{ 
		//alert("ok");
		if(e.which===13 && e.shiftKey === true){
			// alert($('.chat .entry').val());
			//throw message
			chat.throwMessage($('.chat .entry').val());
			e.defaultPrevented ;
		}
	});

});

// chat.interval = setInterval(chat.fetchMessage, 50000);
// chat.fetchMessage();
chat.interval = setInterval(chat.fetchMessage, 50000);
chat.fetchMessage();
