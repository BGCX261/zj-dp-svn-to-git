<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>注册</title>
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

<link rel="stylesheet" href="css/reg.css">
<script type="text/javascript">
	$(document).ready(function() {
		$(".username").focus(function() {
			$(".username").css("background-color", "");
			$(".username").attr("placeholder", "用户名");
		});
		$(".username").blur(function() {
			var username = $(".username").val();
			if (username == "") {
				$(".username").css("background-color", "#D64444");
				$(".username").val($(".username").defaultValue);
				$(".username").attr("placeholder", "用户名不能为空");
			} else {
				//alert("hh");
				$.ajax({
					type : "POST",
					url : "check_reg.action",
					dataType : "json",
					data : {
						"user.username" : username
					},
					success : function(json) {
						if (json.success == false) {
							$(".username").css("background-color", "#D64444");
							$(".username").val($(".username").defaultValue);
							$(".username").attr("placeholder", "用户名已被注册");
						}
					}
				});
			}
		});
		$(".pwd2").blur(function() {
			if ($(".pwd1").val() !== $(".pwd2").val()) {
				$(".pwd2").val($(".pwd2").defaultValue);
				$(".pwd2").attr("placeholder", "密码不一致");
				$(".pwd2")[0].focus();
				return false;
			}
		});
		$("#form1").submit(function() {
			var money = $(".youmoney").val();
			if ($(".pwd1").val() !== $(".pwd2").val()) {
				$(".pwd2").val($(".pwd2").defaultValue);
				$(".pwd2").attr("placeholder", "密码不一致");
				$(".pwd2")[0].focus();
				return false;
			}else if (isNaN(money)) {
				$(".youmoney").val($(".youmoney").defaultValue);
				$(".youmoney").attr("placeholder", "请填写数字");
				$(".youmoney")[0].focus();
				return false;
			}else{
				var user=$(".username").val();
				var pwd=$(".pwd1").val();
				var money=$(".youmoney").val();
				$.ajax({
					type : "POST",
					url : "reg.action",
					dataType : "json",
					data : {
						"user.username" : user,
						"user.password" : pwd,
						"user.money":money
					},
					success : function(json) {
						if (json.success == true) {
							location.href ="index.jsp";
							alert("注册成功！");
						}else{
							$(".btn").val("注册失败");
						}
					}
				});
			}
			return false;
		});
	});
</script>
</head>
<body>
	<form class="form-signin" role="form" id="form1">
		<h2 class="form-signin-heading">注册</h2>
		<input type="text" class="form-control username" placeholder="用户名"
			required autofocus> <input type="password"
			class="form-control pwd1" placeholder="密码" required> 
			<input
			type="password" class="form-control pwd2" placeholder="再次输入密码"
			required> 
			<input type="text" class="form-control youmoney"
			placeholder="输入你的money" required>
		<button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
	</form>


</body>
</html>
