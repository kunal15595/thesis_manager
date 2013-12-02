<?php

//echo "chat";
// require_once 'core.php';

class chat extends core
{
	// public $countt;
	public function fetchMessage()
	{
		// die();
		$user_type=$_SESSION['user_type'];
		$user_nm=$_SESSION['user_nm'];
		//extract messages
		if($user_type=="std")
		{
			$query = " SELECT DISTINCT body, datetime, priority, posted_by, post_to 
			FROM notice
			JOIN student ON (student.advisor_id=posted_by AND student.user_nm='". $user_nm ."') OR post_to='". all ."' OR post_to='". std ."' 
			
			ORDER BY datetime DESC
			 ";
				$query_run=mysql_query($query);
				$num_result=mysql_num_rows($query_run);
				// echo $num_result;
			return $query_run;
		}
		else if($user_type=="fac")
		{
			$query = " SELECT DISTINCT body, datetime, priority, posted_by, post_to
			 	FROM notice
			 	WHERE post_to='". all ."' OR post_to='". fac ."' OR posted_by='". mysql_real_escape_string( $user_nm ) ."'
			 	ORDER BY datetime DESC
			 ";
				$query_run=mysql_query($query);
				$num_result=mysql_num_rows($query_run);
			// die($num_result);
			return $query_run;
		}
		else if($user_type=="adm")
		$query = " SELECT DISTINCT body, datetime, priority, posted_by, post_to
		 	FROM notice
		 	ORDER BY datetime DESC
		 ";
			$query_run=mysql_query($query);
			$num_result=mysql_num_rows($query_run);
		
		return $query_run;

		}

	public function throwMessage($body, $posted_by, $post_to, $priority)
	{
		//insert into db

		$query = " INSERT INTO `notice` (`body`, `posted_by`, `post_to`,`priority`, `datetime`)
				VALUES ('". mysql_real_escape_string( $body ) ."',  '". mysql_real_escape_string( $posted_by ) ."','". mysql_real_escape_string( $post_to ) ."','". mysql_real_escape_string( $priority ) ."', CURRENT_TIMESTAMP )
				";
		$query_run=mysql_query($query);
		$num_result=mysql_num_rows($query_run);
		
	}

	
}
?>