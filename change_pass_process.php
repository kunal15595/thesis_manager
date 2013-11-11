<?php
require 'Macros/CommonFunctions.php';
require_once 'config/config.php';
require_once 'config/connect.php';
require_once 'config/pattern.php';
$pass = $_REQUEST["currentPass"];
$error="";
if (isset($pass)) {
    $pass1 = $_REQUEST["newPass1"];
    $pass2 = $_REQUEST["newPass2"];
    $sec_ques_id=$_REQUEST["sec_ques"];
    $sec_ques_ans=$_REQUEST["security_ans"];
    if (isset($pass) && isset($pass1) && isset($pass2)) {
        $res = changePasswd($pass, $pass1, $sec_ques_id, $sec_ques_ans);
        if ($res == "DBCONNECTION_ERROR") {
            $error = "Database Connection Error.";
        } else if ($res == "DB_ERROR" || $res == "INVALID") {
            $error = "Operation failed.";
        } else if ($res=="Current password not matched"){
            $error="Current password not matched";
        }else {
            unset($_REQUEST['currentPass']);
            //unset($_SESSION['user_nm']);
            $error = '<font color="green">Password changed successfuly. Logout now and relogin again.</font>';
        }
    }
}
?>