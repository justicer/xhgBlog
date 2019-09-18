<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${PATH }/resources/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="${PATH }/resources/css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="${PATH }/resources/css/login.css">
<script type="text/javascript" src="${PATH }/resources/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${PATH }/resources/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <div><a class="navbar-brand" href="index.html" style="font-size:32px;">尚筹网-创意产品众筹平台</a></div>
        </div>
      </div>
    </nav>

    <div class="container">

      <form class="form-signin" role="form">
        <h2 class="form-signin-heading"><i class="glyphicon glyphicon-log-in"></i> 用户注册</h2>
		  <div class="form-group has-success has-feedback">
			<input type="text" class="form-control" id="user_name" placeholder="请输入登录账号" autofocus>
			<span class="glyphicon glyphicon-user form-control-feedback"></span>
		  </div>
		  <div class="form-group has-success has-feedback">
			<input type="text" class="form-control" id="psd" placeholder="请输入登录密码" style="margin-top:10px;">
			<span class="glyphicon glyphicon-lock form-control-feedback"></span>
		  </div>
		  <div class="form-group has-success has-feedback">
			<input type="text" class="form-control" id="phone" placeholder="请输入手机号码" style="margin-top:10px;">
			<span class="glyphicon glyphicon glyphicon glyphicon-phone-alt form-control-feedback"></span>
		  </div>
		  <div class="form-group has-success has-feedback">
			<input type="text" class="form-control" id="email" placeholder="请输入邮箱地址" style="margin-top:10px;">
			<span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"></span>
		  </div>
		  <div class="form-group has-success has-feedback">
			<input type="text" class="form-control" id="address" placeholder="请输入详细地址" style="margin-top:10px;">
			<span class="glyphicon glyphicon glyphicon glyphicon-screenshot  form-control-feedback"></span>
		  </div>
		  <div>
		  <span id="error" style="color:red;" ></span>
		  </div>
        <div class="checkbox">
          <label>
            忘记密码
          </label>
          <label style="float:right">
            <a href="${PATH }/user/login">我有账号</a>
          </label>
        </div>
        <a class="btn btn-lg btn-success btn-block" onclick="register()" > 注册</a>
      </form>
    </div>

</body>
<script type="text/javascript">
function register(){
	var user_name = $.trim($("#user_name").val());
	var password = $.trim($("#psd").val());
	var email =$.trim( $("#email").val());
	var phone = $.trim($("#phone").val());
	var address = $.trim($("#address").val());
	if(user_name != "" && password != "" && email != "" && phone != "" && address != ""){
		$.ajax({
        	type:"POST",
        	url:"${PATH }/user/insert",
        	data:{
        		user_name:user_name,
        		password:password,
        		email:email,
        		phone:phone,
        		address:address
        	},
        	success:function(data){
        		if(data.message == "ok"){
        			alert(data.message);
        		}else{
        			$("#error").html(data.message);
        		}
        	}
        });
	}else{
		$("#error").html("信息不能为空！");
	}
}


</script>
</html>