var chat = {}

chat.fetchMessage = function () {
	$.ajax({
		url: 'ajax/chat.php',
		type: 'post',
		data: { method: 'fetch' },
		success: function(data) {
			$('.chat .messages').html(data);
			// $('.messages').prop(
			// 	{
			// 		scrollTop­: $('.messages').prop("scrollHei­ght")
			// 	});
		}
	});
}

chat.throwMessage = function(message) {
	//alert('ok');
	if ($.trim(message).length!=0) {
		$.ajax({
			url:'ajax/chat.php',
			type: 'post',
			data: { method: 'throw', message: message },
			success: function(data) {
				chat.fetchMessage();
				chat.entry.val('');
			}
		});
	}
}



 chat.entry = $('.chat .entry');
// chat.entry.bind('keydown', function(e) {
// 	if (e.keyCode === 13 && e.shiftKey === false) {
// 		//throw message
// 		chat.throwMessage($this.val());
// 		e.preventDefault();
// 	}
// })
$(function() 
{ $('.chat .entry').on('keydown', 
	function(e) 
	{ 

		if(e.which===13 && e.shiftKey === true){
			//alert('in');
			//throw message
			chat.throwMessage($('.chat .entry').val());
			e.defaultPrevented ;
		}
	});

});

chat.interval = setInterval(chat.fetchMessage, 2000);
chat.fetchMessage();