<?php
//select row

//echo 'hello'.'<br>';
require 'config/config.php';
require 'config/connect.php';

$query="INSERT INTO `list`
(
    `user_id`
    
)
SELECT 
    NULL
    user_nm 
FROM `users` ";

if($query_run=mysql_query($query)){
	echo "ok";
}
?>