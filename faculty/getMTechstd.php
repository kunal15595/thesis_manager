<?php
	$result=getAllStudents("MT",$_SESSION['user_nm']);
	if($result=="DONE"){
	    echo $_SESSION["innerHTMLSimple"];
	    unset ($_SESSION["innerHTMLSimple"]);
	}else if($result=="DBCONNECTION_ERROR"){
	    echo '<div id="ListOddRow" style="text-align: center; color: #990033">Database connection error.</div>';
	}else if($result=="NOT_FOUND"){
	    echo '<div id="ListOddRow" style="text-align: center; color: #990033">No M.Tech student found under your guidance.</div>';
	}else{
	    echo '<div id="ListOddRow" style="text-align: center; color: #990033">Some unknown error occured. Please refresh the page.</div>';
	}
 ?>