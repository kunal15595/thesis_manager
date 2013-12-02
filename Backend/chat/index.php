<?php
session_start();

//require 'core/init.php';

$_SESSION['user'] = (isset($_GET['user']) === true) ? (int)$_GET['user'] : 0;

 require 'core/classes/core.php';
 require 'core/classes/chat.php';

//echo 'user'.$_SESSION['user'].'<br>';
$chat = new chat();

// $chat->throwMessage(1, 'This is a test message');
//echo '<pre>', print_r($chat->fetchMessages(), true), '</pre>';
//print_r($chat->fetchMessages());

?>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<?php include '../../config/config.php'; ?>
        <?php include '../../session_check.php'; ?>
		<link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/UserStyleSheet.css' ?>" type="text/css" />
		<link rel="stylesheet" href="css/style.css"/>
		<title>AJAX CHAT</title>
		
	</head>
	<body>
		
		<div id="bodyPanel">
		    <div id="adminHeader">
		        <div id="adminHeaderTitle">
		            <?php include '../Macros/headerImage.php';?>
		        </div>
		        <div id="adminHeaderLocation">Department of CSE, IIT Guwahati</div>
		    </div>
		    <?php //include 'session_check.php'; ?>
			<div id="middle">    
			    <div id="adminVMenu">
			        <?php include '../PhpIncludeFiles/Admin/VerticalMenuItems.php'; ?>
			    </div>
			    <div id="adminMiddle">
			        <div id="welcome">Welcome, <?php echo strtoupper($_SESSION['name']) ?></div>
			        <div  id="change_password">
			            <b>Welcome to Online Thesis Management.</b>
			        <br/>You have to change your default password before uploading your thesis.
			        <br/><span style="color: green;font-size: 18px;">Ignore the above message if you have already changed your password.</span>
			        </div>
			    </div>
			    
			    
				<div id="rightPanel">
					<div id="select">
					    <div id="send_to">Send To :
				            <select class="select" name="user_type" >
				                <option id="std" value="std" selected>Student</option>
				                <option id="fac" value="fac" >Faculty</option>
				                <option id="adm" value="adm">Admin</option>
				            </select>
				        </div>
				        <div id="autosuggest">
							<input type="text" class="autosuggest" placeholder="Search Name..."/>
					    </div>
					    
			    		<div class="dropdown">
			    			<ul class="result">
			    			</ul>
			    		</div>
					    <div id="start">
			    			<input id="chat" type="button" value="Start" placeholder="Start" disabled="true"/>
			    		</div>
					    <br/>
					</div>
					<div id="message" class="chat">
						<div>
							<div id="scroll" class="messages">
								<div class="message">
									<!-- <a href="#">kunal</a> says:
									<p>dvsdfvsfdvfdv</p> -->
								</div>
							</div> 
						</div>
						<div>
							<textarea class="entry" placeholder="Type here...     Press Enter for new line.  Use Shift + Enter to submit"></textarea>
						</div>
					</div>
				</div>
			</div>
			<div id="adminFooter">
			        <?php include 'Macros/AdminFooter.php'; ?>
			</div>
		</div>
		 
		
		<script src="jquery.js"></script>
		<script src="primary.js"></script>
		<script src="js/chat.js"></script>
		<script type="text/javascript" src="js/User.js"></script>
	</body>	
</html>