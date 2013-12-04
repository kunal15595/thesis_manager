<?php
<html>
<head>
    <link rel='stylesheet' id='admin-css'  href='admin.css' type='text/css' media='all' />
    <link rel='stylesheet' id='colors-fresh-css'  href='colors-fresh.css' type='text/css' media='all' />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script>
    $(function(){
			
        $( "#datepicker" ).datepicker();
		$("#datepicker").datepicker( "show" );
        $("#icon").click(function() { 
        })
    });
    </script>
</head>
<body>
    <input type="text" id="datepicker" name='from' size='9' value="" />  
    <img src='images/calender.PNG' id='icon' height='25px' width='25px'/ >
</body>
</html>
?>
