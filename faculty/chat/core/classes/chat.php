<?php

//echo "chat";
// require_once 'core.php';

class chat extends core
{
	// public $countt;
	public function fetchMessage($ref_id, $to_id)
	{
		//extract messages
		$query = " SELECT DISTINCT chat.message, chat.from_id, chat.to_id, list.ref_id, list.user_id
		 	FROM chat
		 	JOIN list ON (list.ref_id = chat.from_id OR list.ref_id = chat.to_id)
		 	WHERE (to_id ='". mysql_real_escape_string( $ref_id ) ."' 
		 		AND from_id ='". mysql_real_escape_string( $to_id ) ."') 
		 	OR (to_id ='". mysql_real_escape_string( $to_id ) ."' 
		 		AND from_id ='". mysql_real_escape_string( $ref_id ) ."')
			ORDER BY datetime DESC
		 ";
			$query_run=mysql_query($query);
			$num_result=mysql_num_rows($query_run);
		
		return $query_run;

		
	}

	public function throwMessage( $message, $ref_id, $to_id)
	{
		//insert into db

		$query = " INSERT INTO `chat` (`message`, `from_id`, `to_id`, `datetime`)
				VALUES ('". mysql_real_escape_string( $message ) ."',  '". mysql_real_escape_string( $ref_id ) ."','". mysql_real_escape_string( $to_id ) ."', CURRENT_TIMESTAMP )
				";
		$query_run=mysql_query($query);
		$num_result=mysql_num_rows($query_run);
		
	}

	
}
?>