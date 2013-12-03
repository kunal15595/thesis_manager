<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include 'config/config.php'; ?>
        <?php include 'session_check.php'; ?>
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/UserStyleSheet.css' ?>" type="text/css" />
        
        <title>Online Thesis Manager</title>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle">
                    <?php include 'Macros/headerImage.php';?>
                </div>
                <div id="adminHeaderLocation"></div>
            </div>
            
            <div id="middle">
                <div id="adminVMenu">
                    <?php include 'Macros/VerticalMenuItems.php'; ?>
                </div>
                <div id="adminMiddle">
                    <div id="welcome">Welcome, <?php echo $_SESSION['name'] ?></div>
                    <div  id="change_password">
                        
                    </br>
                    <?php 
                        include 'config/connect.php';
                        $sql = "SELECT pass_changed, class FROM student WHERE user_nm LIKE '".$_SESSION['user_nm']."'";
                        $query_run = mysql_query($sql);
                        if (mysql_num_rows($query_run)==1) {
                            while($query_row=mysql_fetch_assoc($query_run))
                            {
                                $status=$query_row['pass_changed'];
                                $class = $query_row['class'];
                                // echo $status;
                            }
                        }
                        if ($status!="YES" && $status!="yes") {
                           echo "You have to change your default password before uploading your thesis";
                        }
                        $sql = "SELECT last_date FROM schedule WHERE class LIKE '".$class."'";
                        $query_run = mysql_query($sql);
                        if (mysql_num_rows($query_run)==1) {
                            while($query_row=mysql_fetch_assoc($query_run))
                            {
                                $date1=$query_row['last_date'];
                                
                                list($year, $month, $date) = explode("-", $date);
                                $date2=date("Y-m-d");

                                $diff = abs(strtotime($date2) - strtotime($date1));

                                $years = floor($diff / (365*60*60*24));
                                $months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
                                $days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
                                $time_left = "<strong>Time left for thesis submission</strong>".'</br>';
                                if ($years>0) {
                                    $time_left = $time_left." ".$years." years, ";
                                }
                                if ($months>0) {
                                    $time_left = $time_left." ".$months." months, ";
                                }
                                if ($days>0) {
                                    $time_left = $time_left." ".$days." days ";
                                }
                                $time_left = $time_left;
                            }
                        }
                    ?>
                    </div>
                <?php echo $time_left; ?>
                <br>
                <strong>Last login</strong><br>
                Time:<?php echo $_SESSION['login_time']; ?><br>
                
                Ip:<?php echo $_SESSION['ip_address']; ?>
            </div>
            <script type="text/javascript" src="js/jquery.js"></script>
            <script type="text/javascript" src="js/User.js"></script>
            <div id="rightPanel">
                
            </div>
                <div id="chat">
                <?php
                session_start();
                    if (isset($_GET['redirect']) && !empty($_GET['redirect'])) {
                        $include_path = $_GET['redirect'];

                        switch ($include_path) {
                            case 'chat':
                            //echo $include_path;
                                 header("Location: ".constant("HOST11")."/chat/index.php");
                                break;
                            
                            default:
                                
                                break;
                        }
                    }
                ?>
                </div>
            </div>
            <div id="adminFooter">
                <?php include 'Macros/AdminFooter.php'; ?>
            </div>
        </div>

    </body>
</html>
