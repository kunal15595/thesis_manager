<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../config/config.php'; ?>
        <?php include '../Backend/check_session.php'; ?>
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/AdminStyleSheet.css' ?>" type="text/css" />
        <title>Thesis Manager (Admin Section)</title>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle">
                    <?php include '../Backend/PhpIncludeFiles/Admin/headerImage.php';?>
                </div>
                <div id="adminHeaderLocation">Dashboard People</div>
            </div>
            <div id="middle">
                <div id="adminVMenu">
                    <?php include '../Backend/PhpIncludeFiles/Admin/VerticalMenuItems.php'; ?>
                </div>
                <div id="adminMiddle">
                <!-- ////////////////////////////////// -->
                
                <!-- /////////////////////////////////     -->
                </div>
                <div id="rightPanel">
                </div>
            </div>
            <div id="adminFooter">
                <?php include '../Backend/PhpIncludeFiles/Admin/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
</html>
