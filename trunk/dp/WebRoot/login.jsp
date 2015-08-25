<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script
	src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
        <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

<link rel="stylesheet" href="css/login.css">
<script type="text/javascript">
	$(document).ready(function() {
		$(".form-control").focus(function() {
			$(".form-control").css("background-color", "");
		});
		$(".form-signin").submit(function() {
			var user = $(".user").val();
			var pwd = $(".pwd").val();
			//alert(user+" "+pwd);
			$.ajax({
				type : "POST",
				url : "login.action",
				dataType : "json",
				data : {
					"user.username" : user,
					"user.password" : pwd
				},
				beforeSend : function() {
					$(".btn").html("正在登录...");
				},
				success : function(json) {
					//alert(json);
					//var json=$.parseJSON(data);
					//alert(json);
					if (json.success == 1) {
						//alert("登录成功");
						location.href ="index.jsp";
					} else {
						if (json.data == "1") {
							$(".user").val($(".user").defaultValue);
							$(".pwd").val($(".pwd").defaultValue);
							$(".user").attr("placeholder", "用户名错误");
							$(".user").css("background-color", "#D64444");
							$(".btn").html("登录");
						} else if (json.data == "2") {
							$(".pwd").val($(".pwd").defaultValue);
							$(".pwd").attr("placeholder", "密码错误");
							$(".pwd").css("background-color", "#D64444");
							$(".btn").html("登录");
						}
					}
				}
			});
			return false;
		});
	});
</script>


</head>
<body>
	<form class="form-signin" role="form">
		<h2 class="form-signin-heading">登录</h2>
		<input name="username" type="text" class="form-control user"
			placeholder="用户名" required autofocus> <input name="password"
			type="password" class="form-control pwd" placeholder="密码" required>
		<label class="checkbox"> <input type="checkbox"
			value="remember-me">记住密码 </label>
		<button class="btn btn-lg btn-primary btn-block">登录</button>
	</form>
</body>
</html>
