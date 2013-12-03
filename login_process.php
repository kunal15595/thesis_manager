<?php
    session_start();
     require_once 'config/config.php';
     require_once 'config/pattern.php';

     $http_client_ip=isset($_SERVER['HTTP_CLIENT_IP']);
     $http_x_forwarded_for=isset($_SERVER['HTTP_X_FORWARDED_FOR']);
     $remote_addr=$_SERVER['REMOTE_ADDR'];


     if(!empty($http_client_ip))
     {
        $ip_address=$http_client_ip;
     }
     else if(!empty($http_x_forwarded_for))
     {
        $ip_address=$http_x_forwarded_for;
     }
     else 
     {
        $ip_address=$remote_addr;
     }
     session_start();
     $_SESSION['ip_address'] = $ip_address;
     $_SESSION['login_time'] = date('m/d/Y h:i:s a', time());

        $pageStatus = "NEW";
// check if input fields are filled
    if (isset($_POST['txtUserNm']) && isset($_POST['txtPass']) && isset($_POST['user_type'])) {
        if (!empty($_POST['txtUserNm']) && !empty($_POST['txtPass']) && !empty($_POST['user_type'])) {
           
           $user_nm = $_POST['txtUserNm'];
           $pass = $_POST['txtPass'];
           $user_type=$_POST['user_type'];
           $_SESSION['user_type']=$user_type;
           $captcha = $_POST['secure'];
           if (!preg_match(getUserNamePattern(), $user_nm)){
               $pageStatus = "INVALID_USERNAME";
               //echo "INVALID_USERNAME";
           }
           elseif (!preg_match(getPasswordPattern(), $pass)) {
               $pageStatus = "INVALID_PASSWORD";
               //echo "INVALID_PASSWORD";
           }
           elseif ($_SESSION['secure']!=$captcha) {
                $pageStatus = "INVALID_CAPTCHA".$_SESSION['secure'].$_POST['secure'];
                //echo "INVALID_CAPTCHA";
            }
           else {
               $pageStatus = "REQUESTED";
           }
        }
        else{
            $pageStatus = "INCOMPLETE";
            //echo "INCOMPLETE";
            
        }
    }
    else{
        $pageStatus = "INCOMPLETE";
    }
    
        

        //die('bhag saalA');
    if ($pageStatus == "REQUESTED") {
        $pass_hashed=md5($pass);
        $result = "NOTFOUND";
        require_once 'config/connect.php';
        $query1 = "SELECT last_login_time, last_login_ip from list WHERE user_id='".$user_nm."'";
        $result1 = mysql_query($query1);
        while ($row = mysql_fetch_array($result1)) {
            $_SESSION['last_login_ip'] = $row['last_login_ip'];
            $_SESSION['last_login_time'] = $row['last_login_time'];
        }    
        
        $query2 = " INSERT INTO `list` (`last_login_ip`, `last_login_time`)
                VALUES ('". mysql_real_escape_string( $_SESSION['last_login_ip'] ) ."',  '". mysql_real_escape_string( $_SESSION['last_login_time'] ) ."')
                ";
        mysql_query($query2);
            if($user_type=="std") {
                $sql = "SELECT * FROM student,advisor WHERE student.advisor_id=advisor.advisor_id AND user_nm='" . $user_nm . "' AND `student`.`password_hashed`='" . $pass_hashed . "'";
                $sql_ip = "UPDATE student SET last_login";
                
                $rs = mysql_query($sql);
                while ($row = mysql_fetch_array($rs)) {
                    $result = "FOUND";
                    //$pageStatus=1;
                    session_start();
                    $_SESSION['user_nm'] = $user_nm;
                    $_SESSION['name'] = $row['name'];
                    $_SESSION['roll_number'] = $row['roll_number'];
                    $_SESSION['class'] = $row['class'];
                    $_SESSION['pass_changed'] = $row['pass_changed'];
                    $_SESSION['permission'] = $row['permission'];
                    $_SESSION['advisor_name'] = $row['advisor_name'];
                }
            }else if($user_type=="fac") {
                $sql = "SELECT advisor_name FROM advisor WHERE advisor_id='" . $user_nm . "' and `password_hashed`='" . $pass_hashed . "'";
                $rs = mysql_query($sql);
                while ($row = mysql_fetch_assoc($rs)) {
                    $result = "FOUND";
                    session_start();
                    $_SESSION['user_nm'] = $user_nm;
                    $_SESSION['name'] = $row['advisor_name'];
                }
            }else if($user_type=="adm") {
                $sql = "SELECT name,role FROM users WHERE user_nm='" . $user_nm . "' and `password_hashed`='" . $pass_hashed . "'";
                $rs = mysql_query($sql);
                while ($row = mysql_fetch_assoc($rs)) {
                    $result = "FOUND";
                    session_start();
                    $_SESSION['user_nm'] = $user_nm;
                    $_SESSION['name'] = $row['name'];
                    $_SESSION['role'] = $row['role'];
                }
            }else {
                $result == "NOTFOUND";
            }
        
        mysql_close($con);
// redirect to corresping panel - std, admin or faculty
        if ($result == "FOUND") {
            if ( $user_type=="std") {
                header("Location: " . constant("HOST11") . "/index.php");
            }else if ($user_type=="fac") {
                header("Location: " . constant("HOST11") . "/faculty/index.php");
            }else if ($user_type=="adm") {
                header("Location: " . constant("HOST11") . "/Backend/index.php");
            }
        }
        else {
            //$pageStatus = "INVALID";
            header("Location: " . constant("HOST11") . "/login.php?feedback=$pageStatus ");
        }
    }
    else {
        //$pageStatus = "INVALID";
        header("Location: " . constant("HOST11") . "/login.php?feedback=$pageStatus");
    }
?>