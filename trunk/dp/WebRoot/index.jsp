<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>主页</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/carousel.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
        <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

<link href="../css/kuang.css" rel="stylesheet">
</head>

<s:if test="#session.passaction==null">
<% response.sendRedirect("film/film.action");%>
</s:if>
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
						<li class="active"><a href="index.html">首页</a>
						</li>
						<li><a href="#about">个人中心</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login.html">登录</a>
						</li>
						<li><a href="reg.html">注册</a>
						</li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>


		<!-- Carousel
    ================================================== -->
		<div class="container" align="center">
			<div class="row" align="center">
				<div class="col-lg-12" align="center">
					<div class="thumbnail" align="center">
						<div class="caption" align="center">

							<div id="myCarousel" class="carousel slide" data-ride="carousel">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
									<li data-target="#myCarousel" data-slide-to="1"></li>
									<li data-target="#myCarousel" data-slide-to="2"><br></li>
								</ol>
								<div class="carousel-inner">
								<s:iterator value="#session.carousefilms" id="film" status="a">
									<s:if test="#a.index==1">
									   <div class="item active">				
									</s:if>		
									 <s:else>
									    <div class="item">
									 </s:else>				
										<img
											data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide"
											src="<s:property value='#film.filmimg'/>">
										<div class="container">
											<div class="carousel-caption">
												<h1 style="color:#000000">热播电影:<s:property value='#film.filmname'/></h1>
												<p>
													<a class="btn btn-lg btn-primary" href="ShowTimeAction&filmid="+<s:property value='#film.filmid'/> role="button">观看</a>
												</p>
											</div>
										</div>
									</div>
								
									</s:iterator>
									
								</div>
								<a class="left carousel-control" href="#myCarousel"
									data-slide="prev"><span
									class="glyphicon glyphicon-chevron-left"></span>
								</a> <a class="right carousel-control" href="#myCarousel"
									data-slide="next"><span
									class="glyphicon glyphicon-chevron-right"></span>
								</a>
							</div>
							<h3 style="color:#990099">各种好看的电影尽情欣赏，挑动你的心弦</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.carousel -->


		<div class="container">
			<div class="jumbotron">



				<!-- 显示主体内容   -->



				<div class="container" align="center">




					<div class="row" align="center">
					 <s:iterator value="#session.residuefilms" id="film">
						<div class="col-xs-6 col-sm-3">
							<div class="thumbnail" align="center">
								<img src="<s:property value='#film.filmimg'/>" data-src="holder.js/300x200" />
								<div class="caption" align="center">
									<h3><s:property value='#film.filmname'/></h3>
									<p align="center">
										<a href="ShowTimeAction&filmid="+<s:property value='#film.filmid'/> class="btn btn-primary" role="button">查看场次</a>
									</p>
								</div>
							</div>
						</div>
                   </s:iterator>
					</div>



				</div>

			</div>
		</div>
	</div>
	<!--wo de -->


	<div id="footer">
		<div class="container">
			<p class="text-muted">友情连接：</p>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>