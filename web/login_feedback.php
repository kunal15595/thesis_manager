<?php
if (isset($_GET['feedback'])) {
    if (!empty($_GET['feedback'])) {
    	$pageStatus = $_GET['feedback'];
    	//echo $pageStatus;
	}
}
      
if ($pageStatus == "INCOMPLETE") {
    //echo "Login failed. Enter valid credentials and choose proper user type.";
    echo "INCOMPLETE";
}
elseif ($pageStatus == "INVALID_USERNAME") {
    //echo "Login failed. Enter valid credentials and choose proper user type.";
    echo "INVALID_USERNAME";
}
elseif ($pageStatus == "INVALID_PASSWORD") {
    //echo "Login failed. Enter valid credentials and choose proper user type.";
    echo "INVALID_PASSWORD";
}
elseif ($pageStatus == "INVALID_CAPTCHA") {
    //echo "Login failed. Enter valid credentials and choose proper user type.";
    echo "INVALID_CAPTCHA";
}
elseif ($pageStatus == "INVALID") {
    echo "Login failed. Enter valid credentials and choose proper user type.";
}
elseif ($pageStatus == "NEW") {
    //echo "Login failed. Enter valid credentials and choose proper user type.";
}
else {
	echo "Fill in appropriate credentials";
	//echo $pageStatus;
}
?>