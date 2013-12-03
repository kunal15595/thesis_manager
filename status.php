<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include 'config/config.php'; ?>
        <?php include 'config/connect.php'; ?>
        <?php include 'Macros/DatabaseFunctions.php'; ?>
        <?php include 'Macros/CommonFunctions.php';?>
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/UserStyleSheet.css' ?>" type="text/css" />
        <title>Thesis Manager (Admin Section)</title>
        <?php include 'session_check.php'; ?>

        
        <?php
        $result = getAllRecords();
        ?>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle"><?php include 'Macros/headerImage.php';?></div>
                <div id="adminHeaderLocation"></div>
            </div>
            <div id="middle">
                <div id="adminVMenu">
                    <?php include 'Macros/VerticalMenuItems.php'; ?>
                </div>
                <div id="adminMiddle">
                     <div id="adminMiddleContent">
                        <div id="studentListingResult" style="">
                            <?php
                            if ($result == "DONE") {
                                echo $_SESSION['innerHTMLSimple'];
                                unset($_SESSION['innerHTMLSimple']);
                            } else if ($result == "NOT_FOUND") {
                                echo "<br/><br/><br/><b>NO DATA FOUND!!!!!";
                            } else if ($result == "DBCONNECTION_ERROR") {
                                echo "<br/><br/><br/><b>DATABASE ERROR!!!!!";
                            } else {
                                echo '<b><br/><br/><br/><span  style="text-align: center;padding-left: 50px">Operation failed. Some error occured. Try again.</span>';
                            }
                            ?>                      
                        </div>
                    </div>
                </div>
                <div id="rightPanel">
                </div>
            </div>

            <div id="adminFooter">
                <?php include 'Macros/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
</html>
