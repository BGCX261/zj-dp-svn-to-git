<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
        <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->


	<link href="css/kuang.css" rel="stylesheet">

    
	<script>
	$(document).ready(function () {
		$(".table tr").click(function(){
			var tr = $(this).next("tr");
			var cls = $(tr).attr("class");
			if(cls == "hd"){
				$(tr).toggle();
			}
		});
	});

	function du(e){
		var value=$(e).parent().parent().children("td")[0].innerHTML;
		if(confirm('确定要取消影票?')){
			location='#?id='+value;
		}
	}
</script>


  </head>
  <body>
    
	<div id="wrap">
	<!-- Fixed navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">影院在线订票系统</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.html">首页</a></li>
            <li><a href="#about">个人中心</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="login.html">登录</a></li>
            <li><a href="reg.html">注册</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
      <div class="jumbotron">



		<!--  这里写自己的代码  -->
		<h3>查看订单</h3>
		<div class="table-responsive">
			<table class="table table-hover">
				<th>
					<td>下单时间</td>
					<td>影片名</td>
					<td>票数</td>
					<td>总价</td>
					<td>状态</td>
					<td>操作</td>
				</th>
				<tr>
					<td>1</td>
					<td>2013-12-25 19:00</td>
					<td>喜爱夜蒲</td>
					<td>2</td>
					<td>60</td>
					<td>未上映</td>
					<td><a onclick="du(this);">取消订单</a></td>
				</tr>
				<tr class="hd" style="display:none;">
					<td></td>
					<td colspan="8">
						<ul>
							<li>票号：1&nbsp;上映时间：2013-12-30 19:00 &nbsp;单价：30&nbsp;座位：1排1号</li>
							<li>票号：2&nbsp;上映时间：2013-12-30 19:00 &nbsp;单价：30&nbsp;座位：1排2号</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td>2</td>
					<td>2013-12-31 19:00</td>
					<td>毒战</td>
					<td>2</td>
					<td>70</td>
					<td>未上映</td>
					<td>取消订单</td>
				</tr>
				<tr class="hd" style="display:none;">
					<td></td>
					<td colspan="8">
						<ul>
							<li>bbbbbbbbbbbbbbb</li>
							<li>bbbbbbbbbbbbbbb</li>
						</ul>
					</td>
				</tr>
			</table>
		</div>





      </div>
    </div> <!-- /container -->

	</div>

	<div id="footer">
      <div class="container">
        <p class="text-muted">友情连接：</p>
      </div>
    </div>
  </body>
</html>