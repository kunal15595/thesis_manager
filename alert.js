$(document).ready(function() {
	alert('kya bhai');
});

if($pageStatus == "INCOMPLETE"){
    alert(Fill all entries);
}
else if($pageStatus == "INVALID_USERNAME"){
    alert(invalid username);
}
else if($pageStatus == "INVALID_PASSWORD"){
    alert(invalid password);
}
else if($pageStatus == "INVALID_CAPTCHA"){
    alert(wrong captcha input);
}
