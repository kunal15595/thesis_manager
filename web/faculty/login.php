<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../config/config.php'; ?>
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/AdminStyleSheet.css' ?>" type="text/css" />
        <title>Thesis Manager (Faculty Section) Login</title>
        <?php
        $pageStatus = "NEW";
        if (isset($_POST['txtUserNm'])) {
            $user_nm = $_POST['txtUserNm'];
            $pass = $_POST['txtPass'];
            if ((!preg_match(getUserNamePattern(), $user_nm)) || (!preg_match(getPasswordPattern(), $pass))) {
                $pageStatus = "INVALID";
            } else {
                $pageStatus = "REQUESTED";
            }
        }
//        if (isset($_GET['pageStatus'])) {
//            if ($_GET['pageStatus'] == "001") {
//                $pageStatus = "INVALID";
//            }
//        }
        if ($pageStatus == "REQUESTED") {
            $result = "NOTFOUND";
            if (!($con = mysql_connect(constant("HOSTNAME"), constant("USERNAME"), constant("PASS")))) {
                $result = "DBCONNECTION_ERROR";
            } else if (!($select = mysql_select_db(constant("DBNAME"), $con))) {
                $result = "DBCONNECTION_ERROR";
            } else {
                $sql = "SELECT advisor_name FROM advisor WHERE advisor_id='" . $user_nm . "' and pass='" . $pass . "'";
                $rs = mysql_query($sql);
                while ($row = mysql_fetch_assoc($rs)) {
                    $result = "FOUND";
                    session_start();
                    $_SESSION['faculty_user_nm'] = $user_nm;
                    $_SESSION['faculty_name'] = $row['advisor_name'];
                }
            }
            mysql_close($con);
            if ($result == "FOUND") {
                header("Location: " . constant("HOST11") . "/faculty/index.php");
            } else {
                $pageStatus = "INVALID";
            }
        }
        ?>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle"><?php include 'PhpIncludeFiles/headerImage.php';?></div>
                <div id="adminHeaderLocation">Login Page</div>
            </div>
            <div id="adminVMenu">
            </div>
            <div id="adminMiddle">
                <div id="adminMiddleContent" style="text-align: center;width: 400px;padding-top: 150px">
                    <form action="login.php" method="POST">
                        <table style="width: 100%">
                            <tr>
                                <td colspan="2" style="width: 100%"><div style="color: green;font-size: 30px;padding-bottom: 20px">Thesis manager, faculty login</div></td>
                            </tr>
                            <tr>
                                <td style="width: 40%"><div style="color: #006600;text-align: right">Enter user name :</div></td>
                                <td style="width: 60%"><div style="text-align: left"><input type="text" name="txtUserNm" value="" style="width: 180px"/></div></td>
                            </tr>
                            <tr>
                                <td style="width: 40%"><div style="color: #006600;text-align: right">Enter password :</div></td>
                                <td style="width: 60%"><div style="text-align: left"><input type="password" name="txtPass" value="" style="width: 180px"/></div></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="width: 100%"><div style="color: black;text-align: right;padding-right: 50px"><input type="submit" value="Log In" name="buttonSubmit" /></div></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="width: 100%">
                                    <div style="color: #990000;text-align: center">
                                        <?php
                                        if ($pageStatus == "INVALID") {
                                            echo "Login failed. Enter valid informations.";
                                        }
                                        ?>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <div id="adminFooter">
                <?php include 'PhpIncludeFiles/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
</html>
