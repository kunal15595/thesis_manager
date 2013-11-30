<?php
session_start();

require 'core/init.php';

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
		<?php include '../config/config.php'; ?>
        <?php include '../session_check.php'; ?>
		<link rel="stylesheet" href="<?php echo constant("HOST11") . '/web/css/UserStyleSheet.css' ?>" type="text/css" />
		<link rel="stylesheet" href="css/style.css"/>
		<title>AJAX CHAT</title>
		
	</head>
	<body>
		
		<div id="bodyPanel">
		    <div id="adminHeader">
		        <div id="adminHeaderTitle">
		            <?php include 'Macros/headerImage.php';?>
		        </div>
		        <div id="adminHeaderLocation">Department of CSE, IIT Guwahati</div>
		    </div>
		    <?php require '../session_check.php'; ?>
			<div id="middle">    
			    <div id="adminVMenu">
			        <?php include '../Macros/VerticalMenuItems.php'; ?>
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
					<?php if($_SESSION['user_type']!='std'){
					?>
					    <div id="send_to">Post To :
				            <select class="select" name="user_type" >
				                <?php include 'send.php'; ?>
				            </select>
				        </div>
				    <?php }
				    ?>
					    <div id="compose">
					    	<?php if($_SESSION['user_type']!='std'){
					    	?>
			    				<input id="chat" type="button" value="Compose" />
			    			<?php }
			    			?>
			    			<input id="view" type="button" value="View" />
			    		</div>
					    <br/>
					</div>
					<div id="message" class="chat">
						<div>
							<div class="messages">
								<div class="message">
									<!-- <a href="#">kunal</a> says:
									<p>dvsdfvsfdvfdv</p> -->
								</div>
							</div> 
						</div>
						
					</div>
					<div class="entry">
						<textarea id="posting"  placeholder="Post here...     Press Enter for new line.  Use Shift + Enter to submit"></textarea>
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
	</body>	
</html>