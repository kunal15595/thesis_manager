<?php
require '../core/init.php';

if (isset($_POST['method']) === true && empty($_POST['method']) === false) {

	$chat = new chat();
	$method = trim($_POST['method']);

	if($method ==='fetch') {
		$user_id = $_SESSION['user_nm'];
		$ref_id = 100;
		$query = "SELECT `ref_id` FROM `list` WHERE `user_id`=$user_id "; 
			$query_run=mysql_query($query);
			$num_result=mysql_num_rows($query_run);

			if($num_result==1){
			    while ($query_row=mysql_fetch_assoc($query_run)) {
					$ref_id=$query_row['ref_id'];
				}
			}
		


		$messages = $chat->fetchMessage($ref_id);

		if(empty($messages)===true) {
			echo "There are currently no messages in the inbox";
		}
		else {
			foreach ($messages as $message) {
			?>
				<div class="message">
					<a href="#"><?php echo $message['username']; ?></a> : 
					<p><?php echo $message['message']; ?></p>
				</div>
			<?php
			}
		}
	}
	else if ($method === 'throw' && isset($_POST['message']) === true) {
	//throw message into database
		$message = trim($_POST['message']);
		if (empty($message) === false) {
			$chat->throwMessage($_SESSION['user'],$message);
		}
	}

}
?>