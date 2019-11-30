<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页</title>
<link rel="stylesheet" href="<%=basePath%>/resources/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="<%=basePath%>/resources/css/cover.css" type="text/css" />
<script type="text/javascript" src="<%=basePath%>/resources/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/resources/js/bootstrap.min.js"></script>
</head>
<body background="<%=basePath%>/resources/images/background01.jpg" style="background-size:cover;">

<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column" style="max-width:60em;">
  <header class="masthead mb-auto">
    <div class="inner">
      <h3 class="masthead-brand">小恒哥的博客</h3>
      <!-- <nav class="nav nav-masthead justify-content-center">
   		
        <a class="nav-link active" href="#">Home</a>
        <a class="nav-link" href="#">Features</a>
        <a class="nav-link" href="#">Contact</a>
      </nav> -->
    </div>
    <div style="float:right;">
    <h1 class="cover-heading" id="timeInfo" style="font-size:1.2rem;"></h1>
    </div>
  </header>

  <main role="main" class="inner cover">
    <h1 class="cover-heading"></h1>
    <p class="lead">人的内心，既求生，也求死，我们既追逐光明，也追逐黑暗，我们既渴望爱，有时候却又近乎自毁浪掷手中的爱，
                                    人的心中好像一直有一片荒芜的夜地，留给那个幽暗又寂寞的自我.</p>
    <p class="lead" style="float:right;">————弗洛伊德</p>
    <p class="lead" style="margin-top:60px;">
      <a href="<%=basePath%>/article/main" class="btn btn-lg btn-secondary">进入系统</a>
    </p>
  </main>

  <footer class="mastfoot mt-auto">
    <div class="inner">
      <p>Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
    </div>
  </footer>
</div>
</body>
<script language="javascript">
function getCurDate()
{
var d = new Date();
var week;
switch (d.getDay()){
case 1: week="星期一"; break;
case 2: week="星期二"; break;
case 3: week="星期三"; break;
case 4: week="星期四"; break;
case 5: week="星期五"; break;
case 6: week="星期六"; break;
default: week="星期天";
}
var years = d.getFullYear();
var month = add_zero(d.getMonth()+1);
var days = add_zero(d.getDate());
var hours = add_zero(d.getHours());
var minutes = add_zero(d.getMinutes());
var seconds=add_zero(d.getSeconds());
var ndate = years+"年"+month+"月"+days+"日 "+hours+":"+minutes+":"+seconds+" "+week;
var divT=document.getElementById("timeInfo");
divT.innerHTML= ndate;
}
function add_zero(temp)
{
if(temp<10) return "0"+temp;
else return temp;
}
setInterval("getCurDate()",100);
</script>

</html>