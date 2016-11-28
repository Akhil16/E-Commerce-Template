$(document).ready(function(){
    
    var itype;
    var ajaxreq=new XMLHttpRequest();
    
    $(".itemtype").click(function(){
        itype=this.innerHTML;
        ajaxreq.onreadystatechange=function(){
            if(ajaxreq.readyState===4)
            {
                var itemlist=document.getElementById(itype);
                itemlist.innerHTML=ajaxreq.responseText;
                $("#"+itype).toggle("slow");
            }
        };
        ajaxreq.open("GET","products.jsp?itemtype="+itype,true);
        ajaxreq.setRequestHeader("content-type","application/x-www-form-urlencoded");
        ajaxreq.send(null);
    });
});

