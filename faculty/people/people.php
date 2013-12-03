<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php require '../../config/config.php'; ?>
        <?php include '../check_session.php'; ?>
        <?php require '../../config/connect.php'; ?>
       <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/faculty_stylesheet.css' ?>" type="text/css" />
        <link rel="stylesheet" href="css/style.css" type="text/css" />        
        <title>People</title>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle">
                    <?php include '../../Macros/headerImage.php';?>
                </div>
                 </div>
            
            <div id="middle">
                <div id="adminVMenu">
                    <?php include '../PhpIncludeFiles/faculty_vertical_menue.php'; ?>
                </div>
                <div id="facultyMiddle">
                    <form id='get_profile' action='people.php' method="GET">
                        <div id="select">
                            <div id="autosuggest">
                                <input type="text" autocomplete="off" class="autosuggest" placeholder="Search Name..." name='serch_word'/>
                            </div>
                            
                            <div class="dropdown">
                                <ul class="result">
                                </ul>
                            </div>
                            <div id="profile">
                                <input type="submit" value="Get profile" >
                            </div>
                            <br/>
                        </div>
                        
                    </form>
                    <div id='profile'>
                        <?php require 'search.php'; ?>
                    </div>
                </div>
                <div id="rightPanel">
                    
                </div>
            </div>
            <div id="adminFooter">
                <?php include '../../Macros/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
    <script src="../../js/jquery.js"></script>
    <script src="primary.js"></script>
</html>
