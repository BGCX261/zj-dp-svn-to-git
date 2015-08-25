<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>主页</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
        <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

<link href="css/kuang.css" rel="stylesheet">
<link rel="stylesheet" href="css/icomoon.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/index.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/icomoon.js"></script>



<style type="text/css">
hr {
	border: 0;
	width: 96%;
	color: #FFFF00;
	height: 1px;
}

.text-left {
	color: #FF0000
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$(".paybtn").click(function() {
			//alert("ok");
			$.ajax({
				type : "POST",
				url : "pay.action",
				dataType : "json",
				success : function(json) {
					//alert("ok2");
					if (json.success == 1) {
						if(json.data.msg==undefined){
							alert("支付成功！");
							location.href ="dingdan.jsp";
						}else{
							alert(json.data.msg);
						}
					} else {
						if(json.data.login!==undefined){
							alert("你还未登录，现在去登录！");
							location.href ="login.jsp";
						}
						if(json.data.error!==undefined){
							alert("错误的请求！");
							location.href ="error.jsp";
						}
					}
				}
			});
		});
	});
</script>
</head>
<body>
	<div id="wrap">
		<!-- Fixed navbar -->
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">影院在线订票系统</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp">首页</a>
						</li>
						<li><a href="#about">个人中心</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login.jsp">登录</a>
						</li>
						<li><a href="reg.jsp">注册</a>
						</li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>

		<div class="container">
			<div class="jumbotron">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-3">
							<div class="thumbnail">
								<img src="images/fengbao.jpg" class="img-responsive"
									width="100%">
								<div class="caption">
									<h4 class="text-center filmName">${orderInfo.filmName}</h4>
									<h4 class="text-left">票价：${orderInfo.price}元一张</h4>
									<h4 class="text-left">票数：${orderInfo.count }</h4>
									<h4 class="text-left">总价：&yen;${orderInfo.totalPrice }</h4>
									<p>
									
										<button class="btn btn-primary paybtn">确认订单</button>&nbsp;&nbsp;&nbsp;&nbsp;<a
											href="showTime.jsp" class="btn btn-primary" role="button">返回</a>
									
									</p>
								</div>

							</div>
						</div>
						<s:iterator value="#session.orderInfo.orderDetails" id="od">
							<div class="col-xs-12 col-sm-3">
								<div class="thumbnail">
									<img src="images/ticket.gif" class="img-responsive"
										width="100%" height="100%">
									<h5 style="position:absolute; top:65px; left: 70px;">${orderInfo.filmName }</h5>
									<h5 style="position:absolute; top:40px; left: 65px;">${od.roomName }</h5>
									<h5 style="position:absolute; top:40px; left: 165px;">${od.col}排${od.row }列</h5>
									<h5 style="position:absolute; top:88px; left: 30px;">${od.playTime }</h5>
									<!-- <h5 style="position:absolute; top:88px; left: 140px;">19:30</h5> -->
									<h5 style="position:absolute; top:88px; left: 185px;">${orderInfo.price }元</h5>
								</div>
							</div>
						</s:iterator>
					</div>
				</div>



				<!--  这里写自己的代码  -->






			</div>
		</div>
		<!-- /container -->

	</div>

	<div id="footer">
		<div class="container">
			<p class="text-muted">友情连接：</p>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>