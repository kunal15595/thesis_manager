$('#answer').hide();
var global_user_id;
function ajax(){
	$('#answer').hide();
	var user_id= document.getElementById("IITG_USER_ID").value;
	global_user_id=user_id;
	var ajax_div=document.getElementById("ajax");
$.ajax({
	url:'ajax.php',
	type:'post',
	dataType : 'xml',
	data : { User_Id: user_id },
	success: function(data){
		xmlDocumentElement=data.documentElement;
		ajax_div.innerHTML=xmlDocumentElement.childNodes[0].data;
		if(xmlDocumentElement.childNodes[0].data!='User name Not found'&&xmlDocumentElement.childNodes[0].data!='User ID field cannot be empty'&&xmlDocumentElement.childNodes[0].data!=''){
			$('#answer').show();
		}
	}
});
}

function check_ans(){
	var input_ans=document.getElementById("ans").value;
	var result_div=document.getElementById("result_div");
	$.ajax({
	url:'check_ans.php',
	type:'post',
	dataType : 'xml',
	data : { Input_Ans: input_ans, User_Id : global_user_id },
	success: function(data){
		//alert("hello");
		xmlDocumentElement=data.documentElement;
		result_div.innerHTML=xmlDocumentElement.childNodes[0].data;
		if(xmlDocumentElement.childNodes[0].data=='Correct answer'){
			send_mail(global_user_id);
		}else if(xmlDocumentElement.childNodes[0].data=='wrong answer'){
			input_ans.value='';
		}
	}
});
}

function send_mail(to){
	var contact_email="IITG Thesis Admin"
	var to = to+'@iitg.ernet.in';
	var subject = 'Project Uploder Passward change';
	var body = 'Password change link';
	var headers = 'From: '+contact_email;
	to='shubham.shukla@iitg.ernet.in';
	$.ajax({
		url:'send_mail.php',
		type: 'post',
		dataType: 'xml',
		data : {To : to , Subject :subject , Body : body, Headers : headers},
		success: function(data){
			xmlDocumentElement=data.documentElement;
			alert(xmlDocumentElement.childNodes[0].data);
		},
		error : function(){
			alert("err");
		}
	});
}