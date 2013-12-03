<?php
require_once '../../config/config.php';
require_once '../../config/connect.php';
if(isset($_GET['serch_word'])&&!empty($_GET['serch_word'])){
	$search_word=$_GET['serch_word'];

	$query="SELECT advisor_name,advisor_id FROM advisor WHERE advisor_name LIKE '".mysql_real_escape_string($search_word)."' ";
	//,`advisor_id`
	//where `advisor_nm`=' ".$search_word." '
	$result=mysql_query($query);
	$advisor_id=mysql_fetch_array($result)['advisor_id'];
	$num_rows=mysql_num_rows($result);
	// echo $num_rows;
	if($num_rows==1){
		////////////////////////////////////////////////////////////////
		?><hr>
        Name:
        	<?php echo " ".$search_word;?>
		<br>
		<br>            
        
        Profile Photo:
       	<br> 
       	<?php  
           	$query="SELECT photo FROM list WHERE `user_id`='".mysql_real_escape_string($advisor_id)."'"; 
            $result=mysql_query($query);
            $row=mysql_fetch_array($result);
        ?>
        <?php echo '<img src="data:image/jpeg;base64,' . base64_encode( $row['photo'] ) . '" height="100px" width="90px"/>' ?>
		<br>
		<br>	                       

        Research intrest :
        <?php          
        	$query="SELECT field from categories where prof='".$search_word."'";
        	$result=mysql_query($query);

            while($row=mysql_fetch_array($result)){
            	echo "<br>";
            	echo " ".$row['field'];
        	}
       	?>
		<br>
		<br>      

    	Mail id :
    	<?php
        	echo " " . $advisor_id . "@iitg.ernet.in";
		////////////////////////////////////////////////////////////////
	}else{
		echo 'name not found';
	}
}else
	echo "";
?>