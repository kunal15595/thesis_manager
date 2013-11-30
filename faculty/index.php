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
                <div id="adminHeaderLocation">Dashboard Home</div>
            </div>
            <div id="adminMiddle">
            <table>
              <td id="adminVMenu" style="width: 15%;">
                <div >
                <?php include 'PhpIncludeFiles/faculty_vertical_menue.php'; ?>
                </div>
              </td>
              <td style="width: 85%;">  
                <table> 
                  <tr> 
                     <div style="color: olive;font-size: 20px; text-align: center;width: 100%">****Welcome, <?php echo $_SESSION['name'] ?>****</div>
                  </tr>        
                  <tr >
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
                        <div> 
                  

                          <?php 
                             $result=getAllStudents("BT",$_SESSION['user_nm']);
                             echo $result;
                             if($result=="DONE"){
                                 echo $_SESSION["innerHTMLSimple"];
                                 unset ($_SESSION["innerHTMLSimple"]);
                             }else if($result=="DBCONNECTION_ERROR"){
                                 echo '<div id="ListOddRow" style="text-align: center; color: #990033">Database connection error.</div>';
                             }else if($result=="NOT_FOUND"){
                                 echo '<div id="ListOddRow" style="text-align: center; color: #990033">No B.Tech student found under your guidance.</div>';
                             }else{
                                 echo '<div id="ListOddRow" style="text-align: center; color: #990033">Some unknown error occured. Please refresh the page.</div>';
                             }
                          ?>
                        </div>
                  </div>
                </tr>
                <tr>  
                  <div id="mTPanel">
                      <div id="mTPanelTitle">M.Tech students under your guidance</div>
                      <div id="bTPanelInfo">Click on the roll number for complete list of permission granting history</div>
                      <div id="mTListHeader">
                          <div id="mTSrlNo">S No.</div>
                          <div id="mTRollNo">Roll Number</div>
                          <div id="mTName">Name</div>
                          <div id="mTThesisLink">Thesis Link</div>
                          <div id="mTPermission">Permission</div>
                          <div id="mTStatus">Status</div>
                      </div>
                  
                
                  <?php 
                     $result=getAllStudents("MT",$_SESSION['user_nm']);
                     if($result=="DONE"){
                         echo $_SESSION["innerHTMLSimple"];
                         unset ($_SESSION["innerHTMLSimple"]);
                     }else if($result=="DBCONNECTION_ERROR"){
                         echo '<div id="ListOddRow" style="text-align: center; color: #990033">Database connection error.</div>';
                     }else if($result=="NOT_FOUND"){
                         echo '<div id="ListOddRow" style="text-align: center; color: #990033">No M.Tech student found under your guidance.</div>';
                     }else{
                         echo '<div id="ListOddRow" style="text-align: center; color: #990033">Some unknown error occured. Please refresh the page.</div>';
                     }
                  ?>
                  </div>
                </tr>

            </div>
                </table>
              </td>
            </table>            <div id="adminFooter">
                <?php include 'PhpIncludeFiles/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
</html>
