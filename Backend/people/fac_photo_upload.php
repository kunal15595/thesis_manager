<!doctype html>
<html>
    <head>
        <title>Test</title>
    </head>
    <body>
        <form action="fac_photo_upload.php" method="POST" enctype="multipart/form-data">
        <input type="file" name="file[]" multiple>
        <input type="submit" value="Submit">
        </form>
    </body>
</html>
<?php
include '../config/config.php';
include '../config/connect.php';
if(isset($_FILES['file']['name'])){
    $i=0;
    while($file_nm=$_FILES['file']['name'][$i]){
        ///////////////////////////////
        $tmp_name=$_FILES['file']['tmp_name'][$i];
        $imgopn=mysql_real_escape_string(file_get_contents($tmp_name));
	
				
		$strpos=strpos($_FILES['file']['name'][$i],'.jpeg',0);
        $user_nm=substr_replace($_FILES['file']['name'][$i],'' ,$strpos, 5);
        //$user_nm='anand.ashish';
		$query="UPDATE `list` SET `photo`='" . $imgopn . "' WHERE `user_id`='".$user_nm."' ";
		mysql_query($query);
        ///////////////////////////////
        $i++;
    }
}else
echo 'fail';
?>

