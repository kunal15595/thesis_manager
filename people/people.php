<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../config/config.php'; ?>
        <?php include '../session_check.php'; ?>
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/UserStyleSheet.css' ?>" type="text/css" />
        <link rel="stylesheet" href="style.css" type="text/css" />
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
            
            <div id="middle">
                <div id="adminVMenu">
                    <?php include '../Macros/VerticalMenuItems.php'; ?>
                </div>
                <div id="adminMiddle">
                    <div  id="people">
                    	<a id="std" href="#">Students</a>||<a id="fac" href="#">Faculty</a>
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
