<?php require_once 'check_session.php'; ?>
        
<?php
    require 'PhpIncludeFiles/database/database_functions.php';
    $pass = $_REQUEST["currentPass"];
    $error="";
    if (isset($pass)) {
        $pass1 = $_REQUEST["newPass1"];
        $pass2 = $_REQUEST["newPass2"];
        if (isset($pass) && isset($pass1) && isset($pass2)) {
            $result = changePasswd($_SESSION["faculty_user_nm"],$pass, $pass1);
            if ($result == "DBCONNECTION_ERROR") {
                $error = "Database Connection Error.";
            } else if ($result == "DB_ERROR" || $result == "NONE") {
                $error = "Database error.";
            }else if($result == "INVALID"){
                $error = "Error!! Invalid data format.";
            } 
            else {
                unset($_REQUEST['currentPass']);
                //unset($_SESSION['user_nm']);
                $error = '<font color="green">Password changed successfuly. Logout now and relogin again.</font>';
            }
        }
    }
?>