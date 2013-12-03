<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../../config/config.php'; ?>
        <?php include '../../config/connect.php'; ?>
        
        <?php include '../PhpIncludeFiles/Database/AdminStudentManager.php'; ?>
        <?php include '../check_session.php';?>
        
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/AdminStyleSheet.css' ?>" type="text/css" />
        <link rel="stylesheet" href="../../web/css/adminStudentStyleSheet.css" type="text/css" />
        <title>Thesis Manager (Admin Section)</title>
        <?php
        if (isset($_POST['radioClass'])) {
            $roll = $_POST['radioClass'];
        } else {
            $roll = "MT";
        }
        if (isset($_POST['radioClass2'])) {
            $searchBy = $_POST['radioClass2'];
        } else {
            $searchBy = "Name";
        }
        $result = getAllStudents($roll,$searchBy);
        ?>
        <script language="javascript">
            function searchSelector(){
                document.forms["classSelecter"].submit();
            }
            function findSelector(){
                document.forms["classSelecter"].submit();
            }
        </script>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle"><?php include '../PhpIncludeFiles/Admin/headerImage.php';?></div>
                <div id="adminHeaderLocation">Student Management</div>
            </div>
            <div id="adminVMenu">
                <?php include '../PhpIncludeFiles/Admin/VerticalMenuItems.php'; ?>
            </div>
            <div id="adminMiddle">
<?php include '../PhpIncludeFiles/Admin/Students/StudentHorizontalMenu.php'; ?>
                <div id="adminMiddleContent">
                    <div id="studentContentHeader">Students List</div>
                    <div id="studentTableContatiner">
                        <form name="classSelecter" method="POST">
                            <table class="formTable">
                                <tr><td colspan="3" style="height: 10px"></td></tr>
                                <tr class="formTableRow">
                                    <td class="formTableColLabel">Select Class:</td>
                                    <td class="formTableColField">B.Tech<input type="radio" name="radioClass" value="BT" onclick="searchSelector()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M.Tech<input type="radio" name="radioClass" value="MT" onclick="searchSelector()" /></td>
                                    <td class="formTableColHelp"></td>
                                </tr> 
                                <tr><td colspan="3" style="height: 10px"></td></tr>
                            </table>
                        </form>
                    </div>
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
