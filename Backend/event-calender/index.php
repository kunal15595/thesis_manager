<?php
session_start();
include '../../config/config.php';
include '../../config/connect.php';

if(isset($_POST['heading']) && isset($_POST['detail']) && isset($_POST['dateselect']) && !empty($_POST['heading']) && !empty($_POST['detail']) && !empty($_POST['dateselect'])){
    $heading = $_POST['heading'];
    $detail = $_POST['detail'];
    $dateselect = $_POST['dateselect'];
    // echo $heading;
    // echo $detail;
    // echo $dateselect;
    list($month,$date, $year) = explode("/", $dateselect);
    $date2 = $year.'-'.$month.'-'.$date;
    // echo $date2;
    $query2 = "INSERT INTO `event_calendar`(`id`, `event_date`, `title`, `description`) VALUES ('','".$date2."','".$heading."','".$detail."')";
    
    mysql_query($query2);
}
    
?>
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
                        <H2 align="center" style="color:blue;">View Upcoming Events</H2>
                        <br>
                    <div id="Calendar"> </div>
                    <div id="Events"> </div>
                        <script language="javascript" src="calendar.js"></script>
                        <br>
                </div>
                    <script type="text/javascript" src="../../js/jquery.js"></script>
                    <!-- // <script type="text/javascript" src="../../js/User.js"></script> -->
                <div id="rightPanel"> 
                    <br>
                    <h2 align="center" style="color:red;">Add An event</h2>
                    <form action="index.php" method="post">
                        Event Heading : <input type="text" name="heading"><br>
                        <br>
                        Event Details : &nbsp;&nbsp;<input type="text" name="detail"><br>
                        <br>Select Date : &nbsp; &nbsp; &nbsp;
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
