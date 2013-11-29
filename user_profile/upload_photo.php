<?php
// $width="85px";
// $height="100px";
require_once '../config/config.php';
require_once '../config/connect.php';
include '../session_check.php';
// echo 'hello';
if(isset($_FILES['file']['name']))
{	
	// echo 'hello';
	$name=$_FILES['file']['name'];
	$extension=strtolower(substr($name,strpos($name,'.')+1));
	$type=$_FILES['file']['type'];
	$size=$_FILES['file']['size'];
	$max_size=2097152;
	// $max_size=1024;
	// echo 'hello';
	if($size<$max_size){
		if(isset($_FILES['file']['tmp_name']))
		{
				// echo 'hello';
				$tmp_name=$_FILES['file']['tmp_name'];
			// ///////////////////////////////// image resizing
			// /* Get original image x y*/
			// 	list($w, $h) = getimagesize($_FILES['file']['tmp_name']);
			// 	/* calculate new image size with ratio */
			// 	$ratio = max($width/$w, $height/$h);
			// 	$h = ceil($height / $ratio);
			// 	$x = ($w - $width / $ratio) / 2;
			// 	$w = ceil($width / $ratio);
			// 	/* new file name */
			// 	// $path = 'uploads/'.$width.'x'.$height.'_'.$_FILES['image']['name'];
			// 	/* read binary data from image file */
			// 	$imgString = file_get_contents($_FILES['file']['tmp_name']);
			// 	/* create image from string */
			// 	$image = imagecreatefromstring($imgString);
			// 	$tmp = imagecreatetruecolor($width, $height);
			// 	imagecopyresampled($tmp, $image,0, 0,$x, 0,$width, $height,$w, $h);

			////////////////////////////////
			$imgopn=mysql_real_escape_string(file_get_contents($tmp_name));
			if(isset($name))
			{
				if(!empty($name))
				{
					if(substr($type, 0,5)=='image'){
						$user_nm=$_SESSION['user_nm'];
						$query="UPDATE `list` SET `photo`='" . $imgopn . "' WHERE `user_id`='".$user_nm."' ";
						mysql_query($query);
					}
				}
				
			}
		}
	}else{
		echo 'size limit 2 MB';		
	}
}

?>