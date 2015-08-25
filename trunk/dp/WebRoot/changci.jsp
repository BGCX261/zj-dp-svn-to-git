<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	  <div class="row">
	       <div class="col-xs-6 col-sm-3 sidebar-offcanvas">
                            <div class="thumbnail">
                              <img src="images/fengbao.jpg" class="img-responsive" width="100%">
                              <div class="caption">
                                <h4 class="text-center">风暴</h4>
                              </div>
                            </div>
                        </div>
	       <div class="col-xs-12 col-sm-9">
		   <table class="table table-hover" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" id="bgs">
	
	  <tr>
	  <td colspan="2" style="border:#0066FF 1px solid;  " >&nbsp;&nbsp;电影</font></td>
	  <td  width="26%" style="border:#0066FF 1px solid; border-left:0px;">&nbsp;&nbsp;日期</td>
        <td width="16%" align="center" style="border:#0066FF 1px solid; border-left:0px; ">时间</td>
        <td  width="16%" align="center" style="border:#0066FF 1px solid; border-left:0px;">影厅</td>
        <td  width="17%" align="center" style="border:#0066FF 1px solid; border-left:0px; ">功能</a></td>
      </tr>
      <tr>
        <td colspan="2" rowspan="5" style="border:#0066FF 1px solid; ">&nbsp;&nbsp;风暴</td>
        <td  rowspan="3" style="border:#0066FF 1px solid;  border-left:0px;">&nbsp;&nbsp;1月8号(二)</td>
        <td  align="center" style="border:#0066FF 1px solid;  border-left:0px;">09:20</td>
        <td  align="center" style="border:#0066FF 1px solid;  border-left:0px; ">大厅</td>
        <td  align="center"  style="border:#0066FF 1px solid; border-left:0px;">
		<a href="selectSeat.html" class="btn btn-primary" role="button">订票</a></td>
      </tr>
      <tr>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">19:35</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">1号厅</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">
		<a href="selectSeat.html" class="btn btn-primary" role="button">订票</a></td>
      </tr>
      <tr>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">21:25</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">2号厅</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">
		<a href="selectSeat.html" class="btn btn-primary" role="button">订票</a></td>
      </tr>
      <tr>
        <td rowspan="2" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">&nbsp;&nbsp;1月9号(三)</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">19:35</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">1号厅</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">
		<a href="selectSeat.html" class="btn btn-primary" role="button">订票</a></td>
      </tr>
      <tr>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">21:25</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">大厅</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">
		<a href="selectSeat.html" class="btn btn-primary" role="button">订票</a></td>
      </tr>
      <tr>
        <td colspan="2" rowspan="3" style="border:#0066FF 1px solid; border-top:0px;">&nbsp;&nbsp;风暴</td>
        <td rowspan="2" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">&nbsp;&nbsp;1月8号(二)</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">19:35</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">2号厅</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">
		<a href="selectSeat.html" class="btn btn-primary" role="button">订票</a></td>
      </tr>
      <tr>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">21:25</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">1号厅</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">
		<a href="selectSeat.html" class="btn btn-primary" role="button">订票</a></td>
      </tr>
      <tr>
        <td style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">&nbsp;&nbsp;1月9号(三)</td>
        <td align="center"  style="border:#0066FF 1px solid ; border-left:0px; border-top:0px;">21:25</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">1号厅</td>
        <td align="center" style="border:#0066FF 1px solid; border-left:0px; border-top:0px;">
		<a href="selectSeat.html" class="btn btn-primary" role="button">订票</a></td>
      </tr>
    </table>
		   </div>


	  </div>
	 </div>

    

	

   


		<!--  这里写自己的代码  -->
		
    </div> <!-- /container -->
	</div>

	<div id="footer">
      <div class="container">
        <p class="text-muted">友情连接：</p>
      </div>
    </div>
	
	<script src="js/demo.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>