<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../config/config.php'; ?>
        <?php include '../session_check.php'; ?>
        <link href="calendar.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/UserStyleSheet.css' ?>" type="text/css" />
        
        <title>Calender</title>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle">
                    <?php include '../Macros/headerImage.php';?>
                </div>
                <div id="adminHeaderLocation">Department of CSE, IIT Guwahati</div>
            </div>
            
            <div id="middle">
                <div id="adminVMenu">
                    <?php include '../Macros/VerticalMenuItems.php'; ?>
                </div>
                <div id="adminMiddle" background="calendar.jpg">
                   <p id="a"> <div id="welcome">Welcome, <?php echo strtoupper($_SESSION['name']); ?></div></p>
                    <img src="calendar.jpg" width="600" height="460">
                </div>
		            <script type="text/javascript" src="../js/jquery.js"></script>
		            <script type="text/javascript" src="../js/User.js"></script>
	            <div id="rightPanel">
	                <div id="Calendar"> </div>
	                <div id="Events"> </div>
	                <script language="javascript" src="calendar.js"></script>
	            </div>  
            </div>
            <div id="adminFooter">
                <?php include '../Macros/AdminFooter.php'; ?>
            </div>
        </div>

    </body>
</html>
