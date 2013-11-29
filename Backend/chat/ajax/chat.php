<?php
require '../../core/init.php';
require_once '../../../config/config.php';
require_once '../../../config/connect.php';
if (isset($_POST['method']) === true && empty($_POST['method']) === false ) {

	$chat = new chat();
	$method = trim($_POST['method']);
		$user_id = $_SESSION['user_nm'];
		if(isset($_POST['to_nm']) === true){$to_nm = trim($_POST['to_nm']);}
		if(isset($_POST['message']) === true){$message = trim($_POST['message']);}
		
		$to_nm = preg_replace("#[^ .0-9a-zA-Z]#i", "", $to_nm);
		$to_nm=strtolower($to_nm);

		$variable = mysql_real_escape_string($user_id);
		$query = "SELECT `ref_id`,`user_id` FROM `list` WHERE `user_id` LIKE '%{$variable}%'";
			$query_run=mysql_query($query);
			$num_result=mysql_num_rows($query_run);
			
			if($num_result==1){
			    while ($query_row=mysql_fetch_assoc($query_run)) {
					$ref_id=$query_row['ref_id'];
				}
			}

		$variable1 = mysql_real_escape_string($to_nm);
		$query1 = "SELECT `ref_id`,`user_nm` FROM `list` WHERE `user_nm` LIKE '%{$variable1}%'";
			$query_run1=mysql_query($query1);
			$num_result1=mysql_num_rows($query_run1);
			
			if($num_result1==1){
			    while ($query_row1=mysql_fetch_assoc($query_run1)) {
					$to_id=$query_row1['ref_id'];
				}
			}
			
	if($method ==='fetch') {
		
		$query_run2 = $chat->fetchMessage($ref_id, $to_id);
		if (mysql_num_rows($query_run2)==0) {
			echo "There are currently no messages in the inbox";
		}
		else{
			while ($query_row2=mysql_fetch_assoc($query_run2)) {
				if ($query_row2['ref_id']==$ref_id ) {
					?>
						<div class="message">
							<a href="#" ><?php if ($query_row2['from_id']==$ref_id) {
												echo $_SESSION['name'];
											  }
											 else{
													echo $to_nm;
											} ?></a> : 
							<p><?php echo $query_row2['message']; ?></p>
							
						</div>
					<?php
				}
			}
		}
		
	}
	
	else if ($method === 'throw') {
	//throw message into database
		
		$message = trim($_POST['message']);
		
		if (empty($message) === false) {
			
			$chat->throwMessage($message,$ref_id, $to_id);
			
		}
		
	}

}
?>