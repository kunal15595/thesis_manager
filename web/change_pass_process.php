<?php
require 'Macros/CommonFunctions.php';
include 'config/pattern.php';
$pass = $_REQUEST["currentPass"];
$error="";
if (isset($pass)) {
    $pass1 = $_REQUEST["newPass1"];
    $pass2 = $_REQUEST["newPass2"];
    if (isset($pass) && isset($pass1) && isset($pass2)) {
        $res = changePasswd($pass, $pass1);
        if ($res == "DBCONNECTION_ERROR") {
            $error = "Database Connection Error.";
        } else if ($res == "DB_ERROR" || $res == "INVALID") {
            $error = "Operation failed.";
        } else {
            unset($_REQUEST['currentPass']);
            //unset($_SESSION['user_nm']);
            $error = '<font color="green">Password changed successfuly. Logout now and relogin again.</font>';
        }
    }
}
?>