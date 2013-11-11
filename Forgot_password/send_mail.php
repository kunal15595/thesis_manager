<?php
header('Content-Type: text/xml');
echo '<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>';
echo '<responce>';
$to=$_POST['To'];
$subject=$_POST['Subject'];
$body=$_POST['Body'];
$headers=$_POST['Headers'];
//echo 'success';
if(@mail($to, $subject, $body, $headers)){
   	echo 'email with the new password has been sent to your webmail';
}
else{
   	echo 'There was an error sending email';
}
echo '</responce>';
?>
