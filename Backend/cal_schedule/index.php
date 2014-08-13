<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../../config/config.php'; ?>
        <?php include '../check_session.php'; ?>
        <link href="calendar.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/AdminStyleSheet.css' ?>" type="text/css" />

        <title>Calendar</title>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle">
                    <?php include '../PhpIncludeFiles/Admin/headerImage.php';?>
                </div>
                <div id="adminHeaderLocation">Calendar</div>
            </div>
            <div id="middle">
                <div id="adminVMenu">
                    <?php include '../PhpIncludeFiles/Admin/VerticalMenuItems.php'; ?>
                </div>
                <div id="adminMiddle">
                <H1 align="center" style="color:red;">Upcoming Schedule for Advisor</H1>
                <br>
                <tr>
                    <td>
                        <ul>
                            <li>R.inkulu</li>
                            <li>Hemangee kapoor</li>
                        </ul>
                    </td>
                    <td>
                    <ul>
                        <li>Amit Awekar</li>
                        <li>Samit Bhattacharya</li>
                    </ul>
                    </td>
                    <td>
                    <ul>
                        <li>Arjit sur</li>
                        <li>Gautam Barua</li>
                    </ul>
                    </td>
                </tr>
                </div>
                <script type="text/javascript" src="../../js/jquery.js"></script>
                <script type="text/javascript" src="../../js/User.js"></script>
                <div id="rightPanel"> 
                <br>
                <div id="Calendar"> </div>
                <div id="Events"> </div>
                <script language="javascript" src="calendar.js"></script>
                <br>
                <br>
                <br>
                <h2 align="center" style="color:red;">Add Advisor</h2>
                <form name="input" action="html_form_action.asp" method="get">
                    Advisor : &nbsp; &nbsp; &nbsp; &nbsp;<input type="text" name="user"><br>
                    <br>Select Date : &nbsp;
                    <?php include 'newfile.php'; ?>
                    <br>
                    <br>
                    <input type="submit" value="Submit">
                </form>
                </div>
            </div>
            <div id="adminFooter">
                <?php include '../PhpIncludeFiles/Admin/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
</html>