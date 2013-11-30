<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../../config/config.php'; ?>
        <?php include '../PhpIncludeFiles/Database/AdminRecordManager.php'; ?>
        <?php include '../PhpIncludeFiles/CommonFunctions.php'; ?>
        <?php include '../check_session.php';?>
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/AdminStyleSheet.css' ?>" type="text/css" />
        <?php include 'variables.php';?>
        <title>Thesis Manager (Admin Section)</title>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle"><?php include '../PhpIncludeFiles/Admin/headerImage.php';?></div>
                <div id="adminHeaderLocation">Project Record Display</div>
            </div>
            <div id="adminVMenu">
                <?php include '../PhpIncludeFiles/Admin/VerticalMenuItems.php'; ?>
            </div>
            <div id="adminMiddle">
                <div class="myHeaderMenuStrip">
                    ||<a class="headerMenueLink" href="<?php echo constant("HOST11") . '/Backend/Records/record_home.php?class=BT&pageCount=1' ?>">&nbsp;B. Tech&nbsp;</a>||
                    <a class="headerMenueLink" href="<?php echo constant("HOST11") . '/Backend/Records/record_home.php?class=MT&pageCount=1' ?>" >&nbsp;M.Tech&nbsp</a>||
                </div>
                <div id="adminMiddleContent">
                    <div id="studentListingResult">
                        <?php
                        if ($result == "DONE") {
                            echo $_SESSION['innerHTMLSimple'];
                            unset($_SESSION['innerHTMLSimple']);
                        } else if ($result == "NOT_FOUND") {
                            echo "<b>NO DATA FOUND!!!!!";
                        } else if ($result == "DBCONNECTION_ERROR") {
                            echo "<b>DATABASE ERROR!!!!!";
                        } else {
                            echo "<b>Operation failed. Some error occured. Try again.";
                        }
                        ?>                      
                    </div>
                </div>
            </div>
            <div id="adminFooter">
                <?php include '../PhpIncludeFiles/Admin/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
</html>
