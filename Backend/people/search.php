<?php
require_once '../config/config.php';
require_once '../config/connect.php';
if(isset($_GET['serch_word'])&&!empty($_GET['serch_word'])){
	$search_word=trim($_GET['serch_word']);
	//echo $search_word;
	$query="SELECT `advisor_name`,`advisor_id` FROM advisor where `advisor_name` Like '" . $search_word . "'";
	//,`advisor_id`
	//where `advisor_nm`=' ".$search_word." '
	$result=mysql_query($query);
	$advisor_id=mysql_fetch_array($result)['advisor_id'];
	$num_rows=mysql_num_rows($result);
	if($num_rows==1){
		////////////////////////////////////////////////////////////////
        echo 'Name:';
        	echo " ".$search_word;
		echo "<br>";
		echo "<br>";            
        
        echo 'Profile Photo:';
        	echo '<br>';   
           	$query="SELECT photo FROM list WHERE `user_id`='".$advisor_id."'"; 
            $result=mysql_query($query);
            $row=mysql_fetch_array($result);
            echo '<img src="data:image/jpeg;base64,' . base64_encode( $row['photo'] ) . '" height="100px" width="90px"/>';
		echo "<br>";
		echo "<br>";	                       

        echo   'Research intrest :';          
        	$query="SELECT field from categories where prof='".$search_word."'";
        	$result=mysql_query($query);

            while($row=mysql_fetch_array($result)){
            	echo "<br>";
            	echo " ".$row['field'];
        	}
		echo "<br>";
		echo "<br>";      

    	echo  "Mail id :";
        	echo " " . $advisor_id . "@iitg.ernet.in";
		////////////////////////////////////////////////////////////////
	}else{
		echo 'name not found';
	}
}else
	echo "";
?>