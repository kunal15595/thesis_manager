 <?php
    session_start();
     require_once 'config/config.php';
     require_once 'config/connect.php';
     require_once 'config/pattern.php';

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
        $result = "NOTFOUND";
        require_once 'config/connect.php';
            if($user_type=="std") {
                $sql = "SELECT name,roll_number,class,pass_changed,permission,advisor_name FROM student,advisor WHERE student.advisor_id=advisor.advisor_id AND user_nm='" . $user_nm . "' and password='" . $pass . "'";
                $rs = mysql_query($sql);
                while ($row = mysql_fetch_assoc($rs)) {
                    $result = "FOUND";
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
                $sql = "SELECT advisor_name FROM advisor WHERE advisor_id='" . $user_nm . "' and pass='" . $pass . "'";
                $rs = mysql_query($sql);
                while ($row = mysql_fetch_assoc($rs)) {
                    $result = "FOUND";
                    session_start();
                    $_SESSION['user_nm'] = $user_nm;
                    $_SESSION['name'] = $row['advisor_name'];
                    
                }
            }else if($user_type=="adm") {
                $sql = "SELECT name,role FROM users WHERE user_nm='" . $user_nm . "' and password='" . $pass . "'";
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