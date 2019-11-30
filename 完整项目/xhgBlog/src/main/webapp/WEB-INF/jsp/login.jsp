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
<title>登录</title>
<link rel="stylesheet" href="<%=basePath%>/resources/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="<%=basePath%>/resources/css/cover.css" type="text/css" />
<link rel="stylesheet" href="<%=basePath%>/resources/css/signin.css" type="text/css" />
<script type="text/javascript" src="<%=basePath%>/resources/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/resources/js/bootstrap.min.js"></script>
</head>
<body background="<%=basePath%>/resources/images/background01.jpg" style="background-size:cover;padding-top:0px;">

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

<form class="form-signin">
  <img class="mb-4" src="{{ site.baseurl }}/docs/{{ site.docs_version }}/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
  <h1 class="h3 mb-3 font-weight-normal" style="color:white;text-align: center;" >登录</h1>
  <label for="inputEmail" class="sr-only">账号</label>
  <input type="text" id="inputEmail" class="form-control" placeholder="请输入个人账号..." required autofocus style="margin-bottom: 5px;">
  <label for="inputPassword" class="sr-only">密码</label>
  <input type="password" id="inputPassword" class="form-control" placeholder="请输入个人密码..."" required>
  <div class="checkbox mb-3">
    <label>
      <input type="checkbox" value="remember-me"> <p style="color:white;margin-left: 18px;margin-top: -25px;">记住我</p>
    </label>
  </div>
  <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
</form>
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