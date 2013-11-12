var chat = {}



chat.fetchMessage = function () {
	var to_nm = $('.autosuggest').val();
	//var select_value = $('.select').val();
	// alert(to_nm);
	// alert(select_value);
	$.ajax({
		url: 'ajax/chat.php',
		type: 'post',
		data: { method: 'fetch', to_nm: to_nm  },
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
	

	var to_nm = $('.autosuggest').val();
	if ($.trim(message).length!=0) {
		$.ajax({
			url:'ajax/chat.php',
			type: 'post',
			data: { method: 'throw', message: message , to_nm: to_nm  },
			success: function(data) {
				// alert(data);
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
chat.interval = setInterval(chat.fetchMessage, 5000);
chat.fetchMessage();
