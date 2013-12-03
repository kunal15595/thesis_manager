<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include 'config/config.php'; ?>
        <?php include 'session_check.php'; ?>
        <?php require 'change_pass_process.php'; ?>        
        <?php require 'config/connect.php'; ?>
        
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/UserStyleSheet.css' ?>" type="text/css" />
        <title>Online Manager</title>
        <script type="text/javascript" src="functions.js"></script>

    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle">
                    <?php include 'Macros/headerImage.php'; ?>
                </div>
                <div id="adminHeaderLocation">Department of CSE, IIT Guwahati</div>
            </div>
            <div id="adminVMenu">
                <?php include 'Macros/VerticalMenuItems.php'; ?>
            </div>
            <div id="adminMiddle">
                 <div  style="padding-top: 50px;text-align: center;font-size: 25px;color: #990000">
                    <form name="login" action="change_pass.php" method="POST">
                        <span style="text-align: center;font-size: 25px;color: green">Change your password</span>
                        <span style="color: #990000;font-size: 18px;font-style: italic">
                            <br/>**Password can only contain alphabet and numbers and its length must be between 6 to 12.**
                        </span>
                        <table align="center">
                            <tr>
                                <td align="right"><div style="font-size: 18px;color: blue;text-align: right">Current Password: </div></td>
                                <td>
                                    <input type="password" name="currentPass" id="currentPass" value="" size="20" onclick="clearAll()" onblur="enableNewPass()"/>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><div style="font-size: 18px;color: blue;text-align: right">New Password: </div></td>
                                <td>
                                    <input type="password" name="newPass1" id="newPass1" value="" size="20" onclick="enableNewPass()"/>
                                </td>

                            </tr>
                            <tr>
                                <td align="right"><div style="font-size: 18px;color: blue;text-align: right">Confirm Password: </div></td>
                                <td>
                                    <input type="password" name="newPass2" id="newPass2" value="" size="20" onblur="comparePass()"/>
                                </td>
                            </tr>
                            <tbody id="security_display">
                                <tr>
                                    <td colspan="2" align="right">
                                        <input type="button" value="Submit" id="sec_btn" disabled="true" onclick="sec_tbody_display()" />
                                    </td>
                                </tr>
                            </tbody>
                            <tbody id="security_tbody" style="display:none">
                                <tr>
                                    <td align="right"><div style="font-size: 18px;color: blue;text-align: right">Security Question: </div></td>
                                    <td>
                                        <select id="sec_ques" name="sec_ques">
                                            <?php
                                                $select_query= 'SELECT * FROM `security_question` ';
                                                $result=mysql_query($select_query);
                                                $i=1;
                                                while($row=mysql_fetch_array($result)){
                                                    echo "<option value='".$i."'>".$row['security_ques']."</option>";
                                                    $i++;
                                                }
                                            ?>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><div style="font-size: 18px;color: blue;text-align: right">Answer: </div></td>
                                    <td>
                                        <input type="text" name="security_ans" id="security_ans" value="" size="30" onblur="is_all_filled()">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="right">
                                        <input type="submit" value="Submit" id="btnPasswd" name="btnSubmit" disabled="true" />
                                    </td>
                                </tr>
                            </tbody>
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
            <div id="adminFooter">
                <?php include 'Macros/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
</html>
