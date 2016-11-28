$(document).ready(function(){
    var ajaxreq=new XMLHttpRequest();
    $("#myform").submit(function(event){
	var user=$("#username").val();
	var pwd=$("#password").val();
        $("#user_err").text("");
        $("#pwd_err").text("");
	if(user==="" && pwd==="")
	{
		$("#user_err").text("Username Reqd!").show().fadeOut(3000);
		$("#pwd_err").text("Password Reqd!").show().fadeOut(3000);
        }
	else if(user==="")
        {
            $("#user_err").text("Username Reqd!").show().fadeOut(3000);
        }
	else if(pwd==="")
	{
            $("#pwd_err").text("Password Reqd!").show().fadeOut(3000);
        }
	else{
            ajaxreq.onreadystatechange=function(){   
                var sp=document.getElementById("validuser");
                var resp=ajaxreq.responseText;
                if(ajaxreq.readyState===4)
                {   
                    if(resp==="success")
                    {   
                        sp.style.color="green";
                        sp.innerHTML="Login success";
                        setTimeout(function(){
                            window.location.href="SeeStoreServlet";
                        },2000);
                    }
                    else{
                        sp.style.color="red";
                        sp.innerHTML="Login Denied";
                        $("#password").val("");
                    }
                }
            };
            var qry="username="+user+"&password="+pwd;
            ajaxreq.open("POST","ShoppingServlet",true);
            ajaxreq.setRequestHeader("content-type","application/x-www-form-urlencoded");
            ajaxreq.send(qry);
        }
        event.preventDefault();
    });
});
