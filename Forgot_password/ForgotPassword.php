</php
session_start(); 
?>
<!DOCTYPE html>
<html>
<head>
	<title>Forgot Password</title>
	
</head>
<body>
</html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../config/config.php'; ?>
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/UserStyleSheet.css' ?>" type="text/css" />
        <title>Forgot Password</title>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle">
                    <?php include '../Macros/headerImage.php';?>
                </div>
                <div id="adminHeaderLocation">Department of CSE, IIT Guwahati</div>
            </div>
            <?php //include 'session_check.php'; ?>
            <div id="middle">
                <!-- <div id="adminVMenu">
                    <?php include '../Macros/VerticalMenuItems.php'; ?>
                </div> -->
                <div id="adminMiddle">
					<form >
						Please Enter your iitg user ID
	
						<input type="text" id="IITG_USER_ID">
						<input type="button" value="submit" onclick="ajax()">
					</form>
					<div id="ajax"></div>
					<div id="answer" >
					<input type="text" id="ans">
					<input type="button" value="Submit Ans" onclick="check_ans()">
					</div> 
					<div id="result_div"></div>
					<script type="text/javascript" src="../js/jquery.js"></script>
					<script type="text/javascript" src="ajax.js"></script>                
                </div>
            </div>
            <div id="adminFooter">
                <?php include '../Macros/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
</html>
