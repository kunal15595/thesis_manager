<?php
header('Content-Type: text/xml');
echo '<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>';
echo '<responce>';
if(isset($_POST['Input_Ans'])==true&&!empty($_POST['Input_Ans'])){
 	$input_ans=$_POST['Input_Ans'];
 	$user_id=$_POST['User_Id'];
 	//echo "hello";
	$connection=mysqli_connect("localhost","root","shubham@781039","project");
	$query="SELECT * FROM `student` WHERE `user_nm` LIKE '%{$user_id}%' ";
	//echo "hello";
	$result=mysqli_query($connection, $query);
	$row=mysqli_fetch_array($result);
	//echo $row['security_question_ans'];
	if($row['security_question_ans']==$input_ans)
		echo "Correct answer";
	else
		echo "wrong answer";
}else{
 	echo 'Please provide the answer';
}
echo '</responce>';
?>