<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../../config/config.php'; ?>
        <?php include '../../check_session.php'; ?>
        <?php include '../../config/connect.php'; ?>
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/faculty_stylesheet.css' ?>" type="text/css" />
        <link href="calendar.css" rel="stylesheet" type="text/css" />
        <title>Calender</title>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle">
                    <?php include '../../Macros/headerImage.php';?>
                </div>
                <div id="adminHeaderLocation"></div>
            </div>
            
            <div id="middle">
                <div id="adminVMenu">
                    <?php include '../../faculty/PhpIncludeFiles/faculty_vertical_menue.php'; ?>
                </div>
                <div id="facultyMiddle">
                    <div id="Calendar"> </div>
                    <div id="Events"> </div>
                    <script language="javascript" src="calendar.js"></script>
                </div>
		            <script type="text/javascript" src="../js/jquery.js"></script>
		            <script type="text/javascript" src="../js/User.js"></script>
	            <div id="rightPanel">
	                
	            </div>  
            </div>
            <div id="adminFooter">
                <?php include '../../Macros/AdminFooter.php'; ?>
            </div>
        </div>

    </body>
</html>
