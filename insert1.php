<?php
//select row

//echo 'hello'.'<br>';
require 'config/config.php';
require 'config/connect.php';

$query="INSERT INTO list 
(
	`ref_id`
    , `user_id`
    , `role`
    
)
SELECT 
    NULL
    , user_nm
    , 'std'  
FROM `student` ";

if($query_run=mysql_query($query)){
	echo "ok";
}
?>