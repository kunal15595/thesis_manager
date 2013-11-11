
function onLoad(){
    var pass=document.getElementById("currentPass");
    var pass1=document.getElementById("newPass1");
    var pass2=document.getElementById("newPass2");
    pass.disabled=false;
    pass1.disabled=true;
    pass2.disabled=true;
}

function clearAll(){
    var pass=document.getElementById("currentPass");
    var pass1=document.getElementById("newPass1");
    var pass2=document.getElementById("newPass2");
    var errorTD=document.getElementById("errorTD");
    pass.value="";
    pass1.value="";
    pass2.value="";
    errorTD.innerHTML="";
}

function enableNewPass(){
    var pass=document.getElementById("currentPass");
    var pass1=document.getElementById("newPass1");
    var pass2=document.getElementById("newPass2");
    if(pass.value!=""){
        pass1.disabled=false;
        pass2.disabled=false;
        pass1.focus();
    }
}

function comparePass(){
    var pass=document.getElementById("currentPass");
    var pass1=document.getElementById("newPass1");
    var pass2=document.getElementById("newPass2");
    //var btn=document.getElementById("btnPasswd");
    var errorTD=document.getElementById("errorTD");
    var security_tbody=document.getElementById("security_tbody");
    if(pass1.value!=pass2.value){
        if((pass1.value!="" && pass2.value!=""))
        {
            errorTD.innerHTML='<font color="red">Password did not matched.</font>';
        }
        sec_btn.disabled=true;
        //security_tbody.style.display='none';
    }else{
        errorTD.innerHTML='<font color="green">Password matched.</font>';
        if(pass.value!=""){
            sec_btn.disabled=false;
            //security_tbody.style.display='true';
            //is_filled_sec_ans();
            //btn.disabled=false;
        }
    }
}

function sec_tbody_display(){
    var sec_btn=document.getElementById("sec_btn");
    var security_tbody=document.getElementById("security_tbody");
    sec_btn.style.display="none";
    security_tbody.style.display="block";
}

function is_all_filled(){
var btn=document.getElementById("btnPasswd");
var security_ans=document.getElementById("security_ans").value;
if(security_ans!="")
    btn.disabled=false;
}

var errorString="";

function validator(){
    errorString="";
    var flag=true;
    if(document.forms.frmThesis.elements.txtTitle.value==""){
        errorString=errorString+"\n\n Enter thesis title.";
        flag=false;
    }
    if(document.forms.frmThesis.elements.txtAbstract.value==""){
        errorString=errorString+"\n\n Enter abstract.";
        flag=false;
    }
    var fileName=document.forms.frmThesis.elements.fileThesis.value;
    if(fileName==""){
        errorString=errorString+"\n\n Choose a valid file (only pdf).";
        flag=false;
    }else{
        var dotIndex=fileName.lastIndexOf(".");
        if(dotIndex==-1 || fileName.substring(dotIndex+1).toUpperCase()!="PDF"){
            errorString=errorString+"\n\n Choose a valid file (only pdf).";
            flag=false;
        }
    }
    
    return flag;
}

function displayOverwriteWarning(){
    var check=document.frmThesis.elements.chkOverwrite;
    if(check.checked){
        if(!confirm("Overwritting will delete your previous uploaded records.\n Do you want to overwrite??")){
            check.checked=false;
        }
    }
}

function formSubmit(){
    
    if(validator()){
        if(confirm(" *****Be sure about the PDF file you are uploading*****.\n You are not allowed to upload multiple times. \n Do you want to proceed??")){
            document.forms['frmThesis'].submit();
        }
    }else{
        alert("UNABLE TO SUBMIT:"+errorString);
    }
}