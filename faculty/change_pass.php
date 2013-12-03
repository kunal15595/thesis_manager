<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../config/config.php'; ?>
        <?php require_once 'change_pass_process.php'; ?>

        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/faculty_stylesheet.css' ?>" type="text/css" />
        <link rel="stylesheet" href="change_pass.css" type="text/css" />
        <title>Online Manager</title>
        <script type="text/javascript" src="functions.js"></script>
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
                    
                    <div  style="padding-top: 50px;text-align: center;font-size: 25px;color: #990000">
                        <form name="login" action="change_pass.php" method="POST">
                            
                            <span style="text-align: center;font-size: 25px;color: green">Change your password</span>
                            <ul style="list-style-type: none">
                            <li><span style="color: #990000;font-size: 18px;font-style: italic">
                                <br/>Password can only contain alphabets and numbers
                            </span>
                            </li>
                            <li><span style="color: #990000;font-size: 18px;font-style: italic">
                                <br/>Length must be between 6 to 12
                            </span>
                            </li>
                            </ul>
                            <table align="center">
                                <tr>
                                    <td align="right"><div style="font-size: 18px;color: blue;text-align: right">Current Password: </div></td>
                                    <td>
                                        <input type="password" name="currentPass" id="currentPass" value="" size="15" onclick="clearAll()" onblur="enableNewPass()"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><div style="font-size: 18px;color: blue;text-align: right">New Password: </div></td>
                                    <td>
                                        <input type="password" name="newPass1" id="newPass1" value="" size="15" onclick="enableNewPass()"/>
                                    </td>

                                </tr>
                                <tr>
                                    <td align="right"><div style="font-size: 18px;color: blue;text-align: right">Confirm Password: </div></td>
                                    <td>
                                        <input type="password" name="newPass2" id="newPass2" value="" size="15" onblur="comparePass()"/>
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
            
                <div id="rightPanel">
                   
                </div>
            </div>
            <div id="adminFooter">
                <?php include 'PhpIncludeFiles/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
</html>
