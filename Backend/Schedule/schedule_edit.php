<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../../config/config.php'; ?>
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/AdminStyleSheet.css' ?>" type="text/css" />
        <link rel="stylesheet" href="../../web/css/adminStudentStyleSheet.css" type="text/css" />
        <title>Thesis Manager (Admin Section)</title>
        <?php
        require_once '../check_session.php';
        
        if (isset($_GET['class'])) {
            $roll = $_GET['class'];
            if ($roll != "MT" && $roll != "BT") {
                $roll = "NONE";
            }
        } else {
            $roll = "NONE";
        }
        require_once '../../config/connect.php';
        if ($roll == "NONE") {
            $result = "NONE";
        }  else {
            $sql = "SELECT last_date FROM schedule where class='" . $roll . "'";
            $rs = mysql_query($sql);
            $row = mysql_fetch_assoc($rs);
            if ($row) {
                $dateArray = explode("-", $row['last_date']);
                $last_date = $dateArray[2] . '/' . $dateArray[1] . '/' . $dateArray[0];
                $result = "DONE";
            
            mysql_close($con);
        }
        ?>
    <script type="text/javascript" src="functions.js"></script>
        
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle"><?php include '../PhpIncludeFiles/Admin/headerImage.php';?></div>
                <div id="adminHeaderLocation">Schedule Management</div>
            </div>
            <div id="adminVMenu">
                <?php include '../PhpIncludeFiles/Admin/VerticalMenuItems.php'; ?>
            </div>
            <div id="adminMiddle">
                <?php include '../PhpIncludeFiles/Admin/schedule/ScheduleHorizontalMenu.php'; ?>
                <div id="adminMiddleContent">
                    <div id="studentContentHeader">Edit Schedule</div>
                    <div id="studentTableContatiner">
                        <?php if ($result == "DONE") { ?>
                            <form name="editSchedule" action="../PhpIncludeFiles/FormProcessor/Schedule/edit_form_processor.php" method="POST">
                                <table class="formTable">
                                    <tr class="formTableRow">
                                        <td class="formTableColLabel">Class :</td>
                                        <td class="formTableColField"><input type="text" name="txtClass" value="<?php echo $roll ?>" readonly="yes" /></td>
                                        <td class="formTableColHelp"></td>
                                    </tr>
                                    <tr><td colspan="3" style="height: 10px"></td></tr>
                                    <tr class="formTableRow">
                                        <td class="formTableColLabel">Date (DD/MM/YYYY):</td>
                                        <td class="formTableColField">
                                            <input type="text" id="txtDate" name="txtDate" value="<?php echo $last_date ?>"/>
                                        </td>
                                        <td class="formTableColHelp">Must be in DD/MM/YYYY format. e.g., 25-11-2011</td>
                                    </tr>
                                    <tr><td colspan="3" style="height: 10px"></td></tr>
                                    <tr><td colspan="3" style="height: 10px"></td></tr>
                                    <tr>
                                        <td colspan="2" style="height: 10px;text-align: right"><input type="button" value="Update" name="buttonSubmit" onclick="submitForEdition()" /></td>
                                        <td></td>    
                                    </tr>
                                </table>
                            </form>
                            <?php
                        } else {
                            echo '<b>NO DATA EXIST!!!!!!</b>';
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
