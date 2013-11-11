<?php
//select row

//echo 'hello'.'<br>';
require 'config/config.php';
require 'config/connect.php';

$counter=0;
$query=" SELECT `advisor_name` FROM `advisor` WHERE 1 ";
//$query_run=mysql_query($query);
if($query_run=mysql_query($query))
{
	//echo 'Query success';
	if(mysql_num_rows($query_run)==NULL)
	{
		//echo 'No results found';
	}
	else
	{echo mysql_num_rows($query_run);
		print_r($query_run);
		print_r($query_row=mysqli_fetch_assoc($query_run));

	   	while($query_row=mysql_fetch_assoc($query_run))
	   	{
	   		echo $name=$query_row['advisor_name'];
	   		
	   		$query4="INSERT INTO `list` (
	   		`user_id` ,
	   		`user_nm` ,
	   		`role`
	   		)
	   		VALUES (
	   		$counter++ , 'sfgbvdgfhgbvsfgv', 'sdsfdfdf'
	   		)";
	   		//$query4="INSERT INTO `project`.`list` ( `user_id`, `user_nm`, `role` ) VALUES ( '', '". $name ."', '". 'fac' ."' )  "&& $counter++;
	  		if($query_run=mysql_query($query4))
		      {
		      		echo 'Query success';
		      		
		      }
		      else
		      {
		      	echo $counter++;
		      	//echo 'Query ffailed';
		      	//echo mysql_error();
		      }
		}
		echo $counter;
	}
}
else
{
	//echo 'Query failed';
	//echo mysql_error();
}
?>