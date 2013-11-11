<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../config/config.php'; ?>
        <?php require_once 'change_pass_process.php'; ?>

        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/faculty_stylesheet.css' ?>" type="text/css" />
        <title>Online Manager</title>
        <script type="text/javascript" src="functions.js"></script>
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
                <?php include 'PhpIncludeFiles/faculty_horizontal_menue.php'; ?>
                <div style="color: olive;font-size: 20px; text-align: center;width: 100%">****Welcome, <?php echo $_SESSION['faculty_name']?>****</div>
                <div  style="padding-top: 150px;text-align: center;font-size: 25px;color: #990000">
                    <form name="login" action="change_pass.php" method="POST">
                        <span style="text-align: center;font-size: 25px;color: green">Change your password</span>
                        <span style="color: #990000;font-size: 18px;font-style: italic">
                            <br/>**Password can only contain alphabets and numbers. Length must be between 6 to 12.**
                        </span>
                        <table align="center">
                            <tr>
                                <td align="right"><div style="font-size: 18px;color: blue;text-align: right">Current Password: </div></td>
                                <td>
                                    <input type="password" name="currentPass" id="currentPass" value="" size="30" onclick="clearAll()" onblur="enableNewPass()"/>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><div style="font-size: 18px;color: blue;text-align: right">New Password: </div></td>
                                <td>
                                    <input type="password" name="newPass1" id="newPass1" value="" size="30" onclick="enableNewPass()"/>
                                </td>

                            </tr>
                            <tr>
                                <td align="right"><div style="font-size: 18px;color: blue;text-align: right">Confirm Password: </div></td>
                                <td>
                                    <input type="password" name="newPass2" id="newPass2" value="" size="30" onblur="comparePass()"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">
                                    <input type="submit" value="Submit" id="btnPasswd" name="btnSubmit" disabled="true" />
                                </td>
                            </tr>
                            <tr>
                                <td id="errorTD" colspan="2" align="right" style="font-style: italic;color: red">
                                    <?php echo $error;?>
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
