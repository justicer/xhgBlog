<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%--     <% 
String path = request.getContextPath(); 
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。 
pageContext.setAttribute("basePath",basePath); 
%>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keys" content="">
    <meta name="author" content="">
<title>Insert title here</title>
<link rel="stylesheet" href="${PATH }/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="${PATH }/resources/css/login.css">
<link rel="stylesheet" href="${PATH }/resources/css/bootstrap.min.css" type="text/css" />
<script type="text/javascript" src="${PATH }/resources/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${PATH }/resources/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <div><a class="navbar-brand" href="index.html" style="font-size:32px;">小恒哥系统平台</a></div>
        </div>
      </div>
    </nav>

    <div class="container">

      <form class="form-signin" role="form">
        <h2 class="form-signin-heading"><i class="glyphicon glyphicon-log-in"></i> 用户登录</h2>
		  <div class="form-group has-success has-feedback">
			<input type="text" class="form-control" id="username" placeholder="请输入登录账号" value="小明" autofocus>
			<span class="glyphicon glyphicon-user form-control-feedback"></span>
		  </div>
		  <div class="form-group has-success has-feedback">
			<input type="text" class="form-control" id="psd" placeholder="请输入登录密码" value="123456" style="margin-top:10px;">
			<span class="glyphicon glyphicon-lock form-control-feedback"></span>
		  </div>
		  <div>
		  <span id="error" style="color:red;" ></span>
		  </div>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
          <br>
          <label>
            <a href="#">忘记密码</a>
          </label>
          <label style="float:right">
            <a href="${PATH }/user/register">我要注册</a>
          </label>
        </div>
        <a class="btn btn-lg btn-success btn-block" onclick="login()" > 登录</a>
      </form>
    </div>
</body>
<script>
    function login() {
        var user_name = $("#username").val();
        var password = $("#psd").val();
       
        $.ajax({
        	type:"POST",
        	url:"${PATH }/user/checkLogin",
        	data:{
        		user_name:user_name,
        		password:password
        	},
        	success:function(data){
        		if(data.message == "ok"){
        			window.location.href="${PATH }/user/list";
        		}else{
        			$("#error").html(data.message);
        		}
        	}
        });
        
    }
    </script>
</html>