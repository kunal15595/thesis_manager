<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <?php include '../config/config.php'; ?>
        <?php include '../config/connect.php';?>
        <?php include '../session_check.php'; ?>
        <?php require 'upload_photo.php';?>
        <script type="text/javascript" src='upload.js'></script>
        <link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/UserStyleSheet.css' ?>" type="text/css" />
        <title>Online Thesis Manager</title>
    </head>
    <body>
        <div id="bodyPanel">
            <div id="adminHeader">
                <div id="adminHeaderTitle">
                    <?php include '../Macros/headerImage.php';?>
                </div>
                <div id="adminHeaderLocation">Department of CSE, IIT Guwahati</div>
            </div>
            
            <div id="middle">
                <div id="adminVMenu">
                    <?php include '../Macros/VerticalMenuItems.php'; ?>
                </div>
                <div id="adminMiddle">
                    
                </div>
                <div id="rightPanel">

                             <div id="name">
                                 Name:
                                 <?php
                                 $user_nm=$_SESSION['user_nm'];
                                 $query="SELECT name from student where user_nm='".$user_nm."'";
                                 $result=mysql_query($query);
                                 $row=mysql_fetch_array($result);
                                 echo " ".$row['name'];
                                 ?>
                             </div>
                             Profile Photo:
                             <div id='photo_div'>
                                 
                                    <!-- <img id='photo' src='love.jpg' height="100px" width="85px"> -->
                                 <?php
                                     $user_nm=$_SESSION['user_nm'];
                                     $query="SELECT photo FROM list WHERE `user_id`='".$user_nm."'"; 
                                     $result=mysql_query($query);
                                     $row=mysql_fetch_array($result);
                                     // header('Content-Type: image/jpeg');
                                     // echo $row['photo']
                                     echo '<img src="data:image/jpeg;base64,' . base64_encode( $row['photo'] ) . '" height="100px" width="90px"/>';
                                 ?>
                                 <form action="student_profile.php" method="POST" enctype="multipart/form-data">
                                     <input type="file" name="file">
                                     <input type="submit" value="Upload Photo">
                                 </form>
                                 <div id='error_messages'></div>
                             </div>
                             <div id="roll_no">
                                 Roll no. :
                                 <?php
                                 $user_nm=$_SESSION['user_nm'];
                                 $query="SELECT roll_number from student where user_nm='".$user_nm."'";
                                 $result=mysql_query($query);
                                 $row=mysql_fetch_array($result);
                                 echo " ".$row['roll_number'];
                                 ?> 
                             </div>
                             <div id="mail_id">
                                 Mail id :
                                 <?php
                                 echo $_SESSION['user_nm']."@iitg.ernet.in";
                                 ?>
                             </div>
                             <div id="Class">
                                 Class :
                                 <?php
                                 $user_nm=$_SESSION['user_nm'];
                                 $query="SELECT class from student where user_nm='".$user_nm."'";
                                 $result=mysql_query($query);
                                 $row=mysql_fetch_array($result);
                                 echo " ".$row['class'];
                                 ?>
                             </div>
                </div>
            </div>
            <div id="adminFooter">
                <?php include '../Macros/AdminFooter.php'; ?>
            </div>
        </div>
    </body>
</html>
