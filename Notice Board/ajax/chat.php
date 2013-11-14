<?php
require '../core/init.php';
require_once '../../config/config.php';
require_once '../../config/connect.php';
if (isset($_POST['method']) === true && empty($_POST['method']) === false ) {

	$chat = new chat();
	$method = trim($_POST['method']);
		$user_id = $_SESSION['user_nm'];
		
		if(isset($_POST['message']) === true){$message = trim($_POST['message']);}
		
		$variable = mysql_real_escape_string($user_id);
		$query = "SELECT `ref_id`,`user_id` FROM `list` WHERE `user_id` LIKE '%{$variable}%'";
			$query_run=mysql_query($query);
			$num_result=mysql_num_rows($query_run);
			
			if($num_result==1){
			    while ($query_row=mysql_fetch_assoc($query_run)) {
					$ref_id=$query_row['ref_id'];
				}
			}

	if($method ==='fetch') {
		
		$query_run2 = $chat->fetchMessage();
		if (mysql_num_rows($query_run2)==0) {
			echo "There are currently no messages in the inbox";
		}
		else{
			while ($query_row2=mysql_fetch_assoc($query_run2)) {
				
					?>
						<div class="message">
							<p><?php echo $query_row2['body']; ?></p>
							<a href="#" id="right"><?php echo $query_row2['posted_by']; ?></a>
						</div>
					<?php	
			}
		}
	}
	
	else if ($method === 'throw') {
	//throw message into database
		
		$body = trim($_POST['message']);
		$post_to = trim($_POST['post_to']);
		$posted_by = $_SESSION['name'];
	?>
		<p><?php echo $body; ?></p>
		<p><?php echo $post_to; ?></p>
		<p><?php echo $posted_by; ?></p>
		
	<?php	
		if (empty($message) === false) {
			
			$chat->throwMessage($body, $posted_by, $post_to, $priority);
			// $chat->throwMessage("sdfc", "Edsf", "std", 0);
			
		}
		
	}

}
?>