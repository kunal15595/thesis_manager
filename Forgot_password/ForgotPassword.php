</php
session_start(); 
?>
<!DOCTYPE html>
<html>
<head>
	<title>Forgot Password</title>
	
</head>
<body>
<form >
	Please Enter your iitg user ID
	
	<input type="text" id="IITG_USER_ID">
	<input type="button" value="submit" onclick="ajax()">
</form>
	<div id="ajax"></div>
	<div id="answer" >
	<input type="text" id="ans">
	<input type="button" value="Submit Ans" onclick="check_ans()">
	</div> 
	<div id="result_div"></div>
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript" src="ajax.js"></script>
</body>
</html>
