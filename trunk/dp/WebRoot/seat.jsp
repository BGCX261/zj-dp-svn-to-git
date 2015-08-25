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
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
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
        	<div class="col-xs-12 col-sm-12 text-center" style="background-color:rgb(91, 192, 222); color:#FFF"><h4>屏幕</h4></div>
        </div>
      	
      	
      	<div class="row">
      		<div class="col-lg-2" style="padding-top: 20px;">
      			<div class="thumbnail"  align="center">
          			<div class="caption" align="center">
    					<a href="#" class="thumbnail">
      						<img src="img/a.jpg" >
    					</a>
    				<small>电影名</small>
    				</div>
    			</div>
  			</div>
  
      	
      	
      		<div class="col-lg-10" style="padding-top: 20px;">
      			<div class="thumbnail"  align="center">
          			<div class="caption" align="center">
						<div style="padding-top: 30px;">
							<table width="70%" border="1" align="center" cellpadding="0" cellspacing="1"  id="tab" >
        						<tr>
	          						<td width="20%" height="50" align="center" id="01-01" value="0">01-01</td>
	          						<td width="20%" align="center" id="01-02" >01-02</td>
	          						<td width="19%" align="center" id="01-03" >01-03</td>
				          			<td width="21%" align="center" id="01-04" >01-04</td>
				          			<td width="20%" align="center" id="01-05" >01-05</td>
        						</tr>
        						<tr>
				          			<td height="50" align="center" id="02-01" >02-01</td>
				          			<td align="center" id="02-02" >02-02</td>
				          			<td align="center" id="02-03" >02-03</td>
				          			<td align="center" id="02-04" >02-04</td>
				          			<td align="center" id="02-05" >02-05</td>
        						</tr>
        						<tr>
				          			<td height="50" align="center" id="03-01" >03-01</td>
				          			<td align="center" id="03-02" >03-02</td>
				          			<td align="center" id="03-03" >03-03</td>
				          			<td align="center" id="03-04" >03-04</td>
				          			<td align="center" id="03-05" >03-05</td>
        						</tr>
        						<tr>
				          			<td height="50" align="center" id="04-01">04-01</td>
				          			<td align="center" id="04-02" >04-02</td>
				          			<td align="center" id="04-03" >04-03</td>
				          			<td align="center" id="04-04" >04-04</td>
				          			<td align="center" id="04-05" >04-05</td>
        						</tr>
      						</table>
      						<div align="center" style="padding-top: 20px;">
						      	<input type="radio" value="1" name="radio_01" onclick="getRadio(this)"><span> 普通票（65元）</span>
							 	<input type="radio" value="2" name="radio_01" onclick="getRadio(this)"><span> 团体票（30X6）</span>
							 	<input type="radio" value="3" name="radio_01" onclick="getRadio(this)"><span> 学生票（35元）</span>
		 					</div>
      						<div  align="center" style="padding-top: 20px;">
	      						<button onclick="submit()" type="button" class="btn btn-info" style="width: 100px;height: 40px;">确认订票</button>
      						</div>
      					</div>
      				</div>
      			</div>
			</div>
		</div>
		<div style="padding-left: 170px;">
		<strong>说明：</strong><br>
			<small>1."01-02表示1排2座"</small><br/>
			<small>2.红色表示已经定出的座位，绿色表示您将要预订的座位，黄色表示未定出的座位。</small><br/>
			<small>3.点击黄色座位即可选中；可以同时选中多个座位；点击绿色座位可以取消选定；红色座位不可以选定。</small><br/>
			<small>4.团体票需选足6张；该厅剩余座位不足6小时需选定全部剩余座位。</small>
		</div>
      </div>
    </div> <!-- /container -->

	</div>
	

	<div id="footer">
      <div class="container">
        <p class="text-muted">友情连接：</p>
      </div>
    </div>
    <script type="text/javascript">
    var type = 0;//1表示普通票，2表示团体票，3表示学生票
	var row;
	var column;
	var isc;//是否被选定 0表示未选  1表示已 2表示已选未提交
	var arrayDom = new Array();
	var arraySold = new Array();
	function getRadio(o) {
		type=o.getAttribute("value");
	}
	//使用jquery 取得table 中td里面的值 
    $("#tab td").click(function () {
       	var tdSeq = $(this).parent().find("td").index($(this));
        var trSeq = $(this).parent().parent().find("tr").index($(this).parent());
        row = trSeq+1;
        column = tdSeq+1;
        //弹出选定的行和列alert("第" + (trSeq+1)+ "行，第" + (tdSeq+1) + "列");
        var dom = $("#tab tr:eq("+trSeq+") td:eq("+tdSeq+")").attr("id");
        var isSold = $.inArray(dom, arraySold);
        if(isSold>=0){
        	alert("已售出");
        }else{
        	var exist = $.inArray(dom, arrayDom);
            if(exist>=0){
            	$("#"+dom).css( "backgroundColor", "rgb(255, 255, 255)" );
            	arrayDom.splice(exist,1);
            }else{
            	$("#"+dom).css( "backgroundColor", "#C8FFC8" );
            	arrayDom.push(dom);
            }
        }
    })
    function submit(){
		if(type == 0){
			alert("请选择影片类型");
		}else{
			if(type==2){
				if(arrayDom.length<6){
					alert("您选择的是团体票，请选择六张以上");
				}else{
					alert("success2");
				}
			};
			if(type == 3){
				alert("success3");
			};
			if(type==1){
				alert("success1");
				
				$.ajax({
					url : "./getSeats.action",
					type : "post",
					datatype : "json",
					success : function(data) {
						var d = $.parseJSON(data);
						alert(d.data[2].name);
					},					
					error : function(data) {
					},
				});
			};
		}
	}
	$(document).ready(function() {
		arraySold.push("02-04");
		for(i = 0;i<arraySold.length;i++){
			$("#"+arraySold[0]).css( "backgroundColor", "rgb(255, 151, 162)" );
		}
		
	});
	
</script>
  </body>
</html>