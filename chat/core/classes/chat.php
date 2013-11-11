<?php

//echo "chat";

class chat extends core
{
	public function fetchMessage($ref_id)
	{
		//query db
		$this->query("
			SELECT 		`chat`.`message`,
						`list`.`ref_id`,
						`list`.`user_id`
			FROM 		`chat`
			JOIN 		`list`
			ON 			`chat`.`to_id` = `list`.`user_id` OR  `chat`.`from_id` =  `list`.`user_id` 
			ORDER BY 	`chat`.`datetime`
			DESC
		");
		//return rows
		return $this->rows();
	}

	public function throwMessage($user_id, $message, $from_id, $to_id)
	{
		//insert into db
		$this->query("
				INSERT INTO `chat` (`message_id`, `message`, `datetime`, `from_id`, `to_id`)
				VALUES (" . (int)$user_id . ", '" . $this->db->real_escape_string(htmlentities($message)) . "', UNIX_DATETIME(), )

			");
	}
}
?>