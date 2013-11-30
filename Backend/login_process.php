
<?php
require_once '../config/config.php';
require_once '../config/pattern.php';
        $pageStatus = "NEW";
      if (isset($_POST['txtUserNm']) && isset($_POST['txtPass'])) {
        if (!empty($_POST['txtUserNm']) && !empty($_POST['txtPass'])) {
           
           $user_nm = $_POST['txtUserNm'];
           $pass = $_POST['txtPass'];
           
           if (!preg_match(getUserNamePattern(), $user_nm)){
               $pageStatus = "INVALID_USERNAME";
           }
           else if (!preg_match(getPasswordPattern(), $pass)) {
               $pageStatus = "INVALID_PASSWORD";
           } 
           else {
               $pageStatus = "REQUESTED";
           } 
        }
        else{
            $pageStatus = "INCOMPLETE";
        }
    }
//        if (isset($_GET['pageStatus'])) {
//            if ($_GET['pageStatus'] == "001") {
//                $pageStatus = "INVALID";
//            }
//        }

    
    ?>
    <!-- // <script type="text/javascript" src="alert.js"></script> -->

    <?php
        if ($pageStatus == "REQUESTED") {
            $result = "NOTFOUND";
            // require '../config/connect.php';
                $sql = "SELECT name,role FROM users WHERE user_nm='" . $user_nm . "' and password='" . $pass . "'";
                $rs = mysql_query($sql);
                while ($row = mysql_fetch_assoc($rs)) {
                    $result = "FOUND";
                    session_start();
                    $_SESSION['admin_user_nm'] = $user_nm;
                    $_SESSION['admin_name'] = $row['name'];
                    $_SESSION['role'] = $row['role'];
                }
            
            mysql_close($con);
            if ($result == "FOUND") {
                header("Location: " . constant("HOST11") . "/Backend/index.php");
            } else {
                $pageStatus = "INVALID";
                header("Location: " . constant("HOST11") . "/Backend/index.php");
            }
        }
        // header("Location: " . constant("HOST11") . "/Backend/index.php");
        ?>