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
                <div id="adminHeaderLocation">Department of CSE, IIT Guwahati</div>
            </div>
            <?php //include 'session_check.php'; ?>
            <div id="middle">
                <div id="adminVMenu">
                    <?php include 'Macros/VerticalMenuItems.php'; ?>
                </div>
                <div id="adminMiddle">
                    <div id="welcome">Welcome, <?php echo strtoupper($_SESSION['name']) ?></div>
                    <div  id="change_password">
                        <b>Online Thesis Management.</b>
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
                                $date=$query_row['last_date'];
                                
                            }
                        }
                    ?>
                    </div>
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
