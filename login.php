<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include 'config/config.php'; ?>
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/login.css' ?>" type="text/css" />
        <title>Online Thesis Manager</title>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle"><?php include 'Macros/headerImage.php';?></div>
                <div id="adminHeaderLocation">Department of CSE, IIT Guwahati</div>
            </div>
            <!-- <div id="adminVMenu"></div> -->
            <div id="adminMiddle">
                <!-- <div id="adminMiddleContent" > -->
                    <form action="login_process.php" method="POST">

                        <table id="login_table" >
                            <tr>
                                <td colspan="2" style="width: 100%">
                                    <div id="login_thesis">Login into Online Thesis Manager</div>
                                </td>
                            </tr>
                            <br/><br/>

                            <tr>
                                <td style="width: 40%">
                                    <div id="select_user_type">Select User Type :</div>
                                </td>
                                <td style="width: 60%" align="left">
                                    <div id="select_user">
                                        <select name="user_type">
                                            <option value="std">Student</option>
                                            <option value="fac">Faculty</option>
                                            <option value="adm">Admin</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                        
                            <tr>
                                <td style="width: 40%">
                                    <div id="enter_username">Enter UserName :</div>
                                </td>
                                <td style="width: 60%">
                                    <div style="text-align: left">
                                        <input type="text" name="txtUserNm" value="" style="width: 180px"/>
                                   </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 40%">
                                    <div id="enter_password" >Enter Password :</div>
                                </td>
                                <td style="width: 60%">
                                    <div style="text-align: left">
                                        <input type="password" name="txtPass" value="" style="width: 180px"/>
                                    </div>
                                </td>
                            </tr>
                            
                        </table>
                            <?php require 'authenticate.php'; ?>
                            
                        <table id="login_table_2">  
                            <tr>
                                <td style="width: 40%">
                                    <div id="enter_captcha">Type the value :</div>
                                </td>
                                <td style="width: 60%">
                                    <div style="text-align: left">
                                        <input type="text" autocomplete="off" name="secure" value="" style="width: 180px"/>
                                   </div>
                                </td>
                            </tr>
                            <br/><br/>
                            <tr>
                                <td colspan="2" style="width: 100%" align="center">
                                    <div style="color: black;">
                                        <input type="submit" value="Log In" name="buttonSubmit" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="width: 100%">
                                    <div style="color: #990000;text-align: center">
                                        <?php require_once 'login_feedback.php'; ?>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </form>
                    <div id="ForgotPassword"><a href="Forgot_password/ForgotPassword.php">Forgot Password</a></div>
                <!-- </div> -->
            </div>
            <div id="adminFooter">
                <?php include 'Macros/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
</html>
