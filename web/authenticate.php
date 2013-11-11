<?php
session_start();

if(!isset($_POST['secure']))
{
	$secure=rand(1000,9999);
    $_SESSION['secure']=$secure;
} 
else{
	if ($_SESSION['secure']==$_POST['secure']) {
		echo 'Match<br>';
	} else {
		echo 'Invalid, try again<br>';
		$_SESSION['secure']=rand(1000,9999);
	}
}
?>
<img  id="captcha_image" src="captcha.php"/>
