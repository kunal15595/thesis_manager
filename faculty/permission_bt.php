<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../config/config.php'; ?>
        <?php include '../config/connect.php'; ?>
        <?php include 'PhpIncludeFiles/database/database_functions.php';?>
        <?php require_once 'check_session.php';?>
        
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/faculty_stylesheet.css' ?>" type="text/css" />
        <script type="text/javascript" src="<?php echo constant("HOST11") . '/web/scripts/facultyScripts.js' ?>"></script>
        <title>Thesis Manager (Faculty Section)</title>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle">
                    <?php include 'PhpIncludeFiles/headerImage.php';?>
                </div>
                <div id="adminHeaderLocation"></div>
            </div>
         <div id="middle">
            
            <div id="adminVMenu">
               <?php include 'PhpIncludeFiles/faculty_vertical_menue.php'; ?>
            </div>
            <div id="facultyMiddle">
                
                <div id="bTPanel" >
                    <div id="bTPanelTitle">B.Tech students under your guidance</div>
                    <div id="bTPanelInfo">Click on the roll number for complete list of permission granting history</div>
                    <div id="bTListHeader">
                      
                        <div id="bTSrlNo">S No.</div>
                        <div id="bTRollNo">Roll Number</div>
                        <div id="bTName">Name</div>
                        <div id="bTThesisLink">Thesis Link</div>
                        <div id="bTPermission">Permission</div>
                        <div id="bTStatus">Status</div>
                      
                     </div>
                     <div id="students"> 
            
                        <?php 
                            include 'getBTechstd.php';
                        ?>
                     </div>
                  </div>
                  
              </div>
            <div id="rightPanel">
            </div>

            </div>
               <div id="adminFooter">
                <?php include 'PhpIncludeFiles/AdminFooter.php'; ?>
               </div>
        </div>
    </body>
</html>
