<html>
<head>
    <link rel='stylesheet' id='admin-css'  href='admin.css' type='text/css' media='all' />
    <link rel='stylesheet' id='colors-fresh-css'  href='colors-fresh.css' type='text/css' media='all' />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
    <script src="../jquery.js"></script>
    <script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script>
    $(function(){
			
        $( "#datepicker" ).datepicker();
        $("#icon").click(function() { 
            $("#datepicker").datepicker( "show" );
        })
    });
    </script>
</head>
<body>
    <input type="text" id="datepicker" name='dateselect' size='9' value="" />  
</body>
</html>