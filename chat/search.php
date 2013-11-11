<?php
//echo 'something';
	require_once '../config/config.php';
	require_once '../config/connect.php';
	//echo "test";

if (isset($_POST['search_term']) && isset($_POST['select_value'])) {
	# code...
		//echo "testing";

	 $search_term=$_POST['search_term'];
	 $select_value = $_POST['select_value'];
	 // echo $select_value;
	 // echo $search_term;
} else {
	# code...
}

if(!empty($search_term))
{

	$search_term = preg_replace("#[^0-9a-z]#i", "", $search_term);
	$search_term=strtolower($search_term);

	switch ($select_value) {
		case 'adm':
			$query = "SELECT `name` FROM `users` WHERE `name` LIKE '%".mysql_real_escape_string($search_term)."%'";			
			break;
		case 'fac':
			$query = "SELECT `advisor_name` AS `name` FROM `advisor` WHERE `advisor_name` LIKE '%".mysql_real_escape_string($search_term)."%'";
			break;
		case 'std':
			$query = "SELECT `name` FROM `student` WHERE `name` LIKE '%".mysql_real_escape_string($search_term)."%'";
			break;
		
		default:
			$query = "SELECT NULL ";
			break;
	}

	// $query = "SELECT `name` FROM `names` WHERE `name` LIKE '%".mysql_real_escape_string($search_term)."%'";
	$query_run=mysql_query($query);
	$num_result=mysql_num_rows($query_run);

	if($num_result==NULL){
      	echo '<strong>No results found</strong>';
  	}
  	else echo '<strong>'.$num_result.'  results   found  </strong>';
	while ($query_row=mysql_fetch_assoc($query_run)) {
		# code...
		$name=strtolower($query_row['name']);
		//echo $name.'<br>';
		$strpos=strpos($name,$search_term,0);
		$search_term_bold = '<strong>'.$search_term.'</strong>';
		$name=substr_replace($name,$search_term_bold ,$strpos, strlen($search_term));
		echo '<li>',$name,'<li>';
		//echo '<a href="anotherpage.php?search_term='.$name.'">'.'<br>';
	}
}


?>