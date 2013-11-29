<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../config/config.php'; ?>
        <?php include '../session_check.php'; ?>
     <!-- // <script type="text/javascript"></script> -->
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
                    <input type="text" id="fac_name">
                    <div id="select">
                        <div id="autosuggest">
                            <input type="text" class="autosuggest" placeholder="Search Name..."/>
                        </div>
                        
                        <div class="dropdown">
                            <ul class="result">
                            </ul>
                        </div>
                        <br/>
                    </div>
                    <input type="button" value="Get profile" onclick="get_profile()">

                </div>
                
            </div>
            <div id="adminFooter">
                <?php include 'Macros/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
    <script src="../js/jquery.js"></script>
    <script src="primary.js"></script>
</html>
