<?php
require '../config/congig.php';
require '../config/connect.php';
header('Content-Type: text/xml');
echo '<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>';
 echo '<responce>';
if(isset($_POST['User_Id'])==true&&!empty($_POST['User_Id'])){
	$user_id=$_POST['User_Id'];
	$query="SELECT * FROM `student` WHERE `user_nm` LIKE '%{$user_id}%' ";
	$result=mysql_query($query);
	$num_rows=mysql_num_rows($result);
	if($num_rows==0){
		echo "User name Not found";
	}else if($num_rows==1){
		//echo "User ID found  ";
		$row=mysql_fetch_array($result);//usr id is unique
		$sec_ques_id=$row['security_question_id'];
		//echo $sec_ques_id;
		$query="SELECT * FROM `security_question` WHERE `security_question_id` LIKE '%{$sec_ques_id}%'";
		$sec_ques_result=mysql_query($query);
		//echo mysqli_num_rows($sec_ques_result);
		$sec_ques_row=mysql_fetch_array($sec_ques_result);
		$sec_ques=$sec_ques_row['security_ques'];
		echo $sec_ques;
		
	
	}
}else{
	echo "User ID field cannot be empty";
}
echo '</responce>';
?>
