
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
    var btn=document.getElementById("btnPasswd");
    var errorTD=document.getElementById("errorTD");
    if(pass1.value!=pass2.value){
        if((pass1.value!="" && pass2.value!=""))
        {
            errorTD.innerHTML='<font color="red">Password did not matched.</font>';
        }
        btn.disabled=true;
    }else{
        errorTD.innerHTML='<font color="green">Password matched.</font>';
        if(pass.value!=""){
            btn.disabled=false;
        }
    }
}
