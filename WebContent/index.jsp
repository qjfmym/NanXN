<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>旅游网</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>

   <!-- 首页信息展示   -->
    <script type="text/javascript">
   		//人气
    	 $(function(){
    		url="${pageContext.request.contextPath}/index";
        	params={"method":"popularitytravel"};
        	$.post(url,params,function(data){
        		$.each(data,function(i, item) {
                    $("#id1").append(
                    		"<div class='col-md-3'>"+
                    		"<a href='index?method=getRouteDetail&rid="+item.rid+"'>"+
                    		"<img src="+item.rimage+">"+
                    		"<div class='has_border'>"+ 
                    		"<h3>"+item.rname+"</h3>"+
                    		"<div class='price'>网付价<em>￥</em><strong>"+item.price+"</strong><em>起</em></div>"+
                    		"</div>"+
                    		"</a>"+
                    		"</div>"	
                    );           
                });
        	},"json")

    	})
   		//最新
    	 $(function(){
    		url="${pageContext.request.contextPath}/index";
        	params={"method":"newtravel"};
        	$.post(url,params,function(data){
        		 $.each(data,function(i, item) {
                    $("#id2").append(
                    		"<div class='col-md-3'>"+
                    		"<a href='index?method=getRouteDetail&rid="+item.rid+"'>"+
                    		"<img src="+item.rimage+">"+
                    		"<div class='has_border'>"+
                    		"<h3>"+item.rname+"</h3>"+
                    		"<div class='price'>网付价<em>￥</em><strong>"+item.price+"</strong><em>起</em></div>"+
                    		"</div>"+
                    		"</a>"+
                    		"</div>"	
                    );
        		 });
        	},"json")
    	}) 
   		//主题
     	$(function(){
    		url="${pageContext.request.contextPath}/index";
        	params={"method":"themetravel"};
        	$.post(url,params,function(data){
        		 $.each(data,function(i, item) {
                    $("#id3").append(
                    		"<div class='col-md-3'>"+
                    		"<a href='index?method=getRouteDetail&rid="+item.rid+"'>"+
                    		"<img src="+item.rimage+">"+
                    		"<div class='has_border'>"+
                    		"<h3>"+item.rname+"</h3>"+
                    		"<div class='price'>网付价<em>￥</em><strong>"+item.price+"</strong><em>起</em></div>"+
                    		"</div>"+
                    		"</a>"+
                    		"</div>"	
                    );
        		 });
        	},"json")
    	}); 
    	//国内
    	$(function(){
    		url="${pageContext.request.contextPath}/index";
    		params={"method":"inland"};
    		$.post(url,params,function(data){
    			 $.each(data,function(i, item) {
                     $("#id4").append(
                    		 "<div class='col-md-4'>"+
                     		"<a href='index?method=getRouteDetail&rid="+item.rid+"'>"+
                     		"<img src="+item.rimage+">"+
                     		"<div class='has_border'>"+
                     		"<h3>"+item.rname+"</h3>"+
                     		"<div class='price'>网付价<em>￥</em><strong>"+item.price+"</strong><em>起</em></div>"+
                     		"</div>"+
                     		"</a>"+
                     		"</div>"	
                     );
         		 });
    		},"json")
    		
    	});
    	//境外
    	$(function(){
    		url="${pageContext.request.contextPath}/index";
    		params={"method":"overseas"};
    		$.post(url,params,function(data){
    			 $.each(data,function(i, item) {
                     $("#id5").append(
                    		 "<div class='col-md-4'>"+
                     		"<a href='index?method=getRouteDetail&rid="+item.rid+"'>"+
                     		"<img src="+item.rimage+">"+
                     		"<div class='has_border'>"+
                     		"<h3>"+item.rname+"</h3>"+
                     		"<div class='price'>网付价<em>￥</em><strong>"+item.price+"</strong><em>起</em></div>"+
                     		"</div>"+
                     		"</a>"+
                     		"</div>"	
                     );
         		 });
    		},"json")
    		
    	});
    
    </script>
</head>
<body>
	<!--引入头部-->
    <%@include file="header.jsp"%>
    <!-- banner start-->
    <section id="banner">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="2000">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="images/a.jpeg" alt="1" >
                </div>
                <div class="item">
                    <img src="images/d.jpeg" alt="2">
                </div>
                <div class="item">
                    <img src="images/s.jpeg" alt="3" >
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
        </div>
    </section>
    <!-- banner end-->
    <!-- 旅游 start-->
    <section id="content">
         <!-- 精选start-->
        <section class="hemai_jx">
            <div class="jx_top">
                <div class="jx_tit">
                    <img src="images/icon_5.jpg" alt="">
                    <span>精选</span>
                </div>
                <!-- Nav tabs -->
                <ul class="jx_tabs" role="tablist">
                    <li role="presentation" class="active">
                        <span></span>
                        <a href="#popularity" aria-controls="popularity" role="tab" data-toggle="tab">人气旅游</a>
                    </li>
                    <li role="presentation">
                        <span></span>
                        <a href="#newest" aria-controls="newest" role="tab" data-toggle="tab">最新旅游</a>
                    </li>
                    <li role="presentation">
                        <span></span>
                        <a href="#theme" aria-controls="theme" role="tab" data-toggle="tab">主题旅游</a>
                    </li>
                </ul>
            </div>
            <div class="jx_content">
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="popularity">
                        <div class="row" id="id1">
                                                   </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="newest">
                        <div class="row" id="id2">
                         
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="theme">
                        <div class="row" id="id3">
                          
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- 精选end-->
        <!-- 国内游 start-->
        <section class="hemai_jx">
            <div class="jx_top">
                <div class="jx_tit">
                    <img src="images/icon_6.jpg" alt="">
                    <span>国内游</span>
                </div>
            </div>
            <div class="heima_gn">
                <div class="guonei_l">
                    <img src="images/guonei_1.jpg" alt="">
                </div>
                <div class="guone_r">
                    <div class="row" id="id4">
                   
                
                    </div>
                </div>
            </div>
        </section>
        <!-- 国内游 end-->
        <!-- 境外游 start-->
        <section class="hemai_jx">
            <div class="jx_top">
                <div class="jx_tit">
                    <img src="images/icon_7.jpg" alt="">
                    <span>境外游</span>
                </div>
            </div>
            <div class="heima_gn">
                <div class="guonei_l">
                    <img src="images/jiangwai_1.jpg" alt="">
                </div>
                <div class="guone_r">
                    <div class="row" id="id5">
                    
                    </div>
                </div>
            </div>
        </section>
        <!-- 境外游 end-->
    </section>
    <!-- 旅游 end-->
   <!--导入底部-->
    <%@include file="footer.jsp"%>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.3.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!--导入布局js，共享header和footer-->
    <script type="text/javascript" src="js/include.js"></script>
    <script type="text/javascript">
        //提交异步请求获取黑马精选数据（人气、最新、主题）
        $.post(
            "route",//Servlet地址
            {action:"routeCareChoose"},
            function (resulteInfo) {
                if(resulteInfo.flag){
                    //正常获取数据
                    //获取人气列表
                    var popularityList = resulteInfo.data.popularity;
                    //拼接
                    var html="";
                    for(var i=0;i<popularityList.length;i++){
                        var route = popularityList[i];
                        html+="<div class=\"col-md-3\">\n" +
                            "                                <a href=\"javascript:;\">\n" +
                            "                                    <img src=\""+route.rimage+"\" alt=\"\">\n" +
                            "                                    <div class=\"has_border\">\n" +
                            "                                        <h3>"+route.rname+"</h3>\n" +
                            "                                        <div class=\"price\">网付价<em>￥</em><strong>"+route.price+"</strong><em>起</em></div>\n" +
                            "                                    </div>\n" +
                            "                                </a>\n" +
                            "                            </div>";
                    }
                    //更新
                    $("#popularity .row").html(html);

                    //获取最新
                    var newsList = resulteInfo.data.news;
                    //拼接
                    var html="";
                    for(var i=0;i<newsList.length;i++){
                        var route = newsList[i];
                        html+="<div class=\"col-md-3\">\n" +
                            "                                <a href=\"javascript:;\">\n" +
                            "                                    <img src=\""+route.rimage+"\" alt=\"\">\n" +
                            "                                    <div class=\"has_border\">\n" +
                            "                                        <h3>"+route.rname+"</h3>\n" +
                            "                                        <div class=\"price\">网付价<em>￥</em><strong>"+route.price+"</strong><em>起</em></div>\n" +
                            "                                    </div>\n" +
                            "                                </a>\n" +
                            "                            </div>";
                    }
                    //更新
                    $("#newest .row").html(html);

                    //获取主题
                    var themesList = resulteInfo.data.themes;
                    //拼接
                    var html="";
                    for(var i=0;i<themesList.length;i++){
                        var route = themesList[i];
                        html+="<div class=\"col-md-3\">\n" +
                            "                                <a href=\"javascript:;\">\n" +
                            "                                    <img src=\""+route.rimage+"\" alt=\"\">\n" +
                            "                                    <div class=\"has_border\">\n" +
                            "                                        <h3>"+route.rname+"</h3>\n" +
                            "                                        <div class=\"price\">网付价<em>￥</em><strong>"+route.price+"</strong><em>起</em></div>\n" +
                            "                                    </div>\n" +
                            "                                </a>\n" +
                            "                            </div>";
                    }
                    //更新
                    $("#theme .row").html(html);
                }else{
                    //发生异常
                    alert(resulteInfo.errorMsg);

                }
            },
            "json"
        );
    </script>
    
  <!--------------begin-   广告弹窗  --------------->
	<style type="text/css">
			#msg_win {
				border: 1px solid #A67901;
				background: #EAEAEA;
				width: 300px;
				position: absolute;
				right: 2;
				margin: 0px;
				display: none;
				overflow: hidden;
				z-index: 99;
			}
			
			#msg_win .icos {
				position: absolute;
				top: 2px;
				*top: 0px;
				right: 2px;
				z-index: 9;
			}
			
			.icos a {
				float: left;
				color: #833B02;
				margin: 1px;
				text-align: center;
				text-decoration: none;
				font-family: webdings;
			}
			
			.icos a:hover {
				color: #fff;
			}
			
			#msg_title {
				background: #FECD00;
				border-bottom: 1px solid #A67901;
				border-top: 1px solid #FFF;
				border-left: 1px solid #FFF;
				color: #000;
				height: 25px;
				line-height: 25px;
				text-indent: 5px;
			}
			
			#msg_content {
				margin: 2px;
				width: 300px;
				height: 170px;
				overflow: hidden;
			}
	</style>
	
	<div id="msg_win" style="display:block;top:500px;visibility:visible;opacity:1;">
	<div class="icos"><a id="msg_min" title="最小化" href="javascript:void 0">_</a><a id="msg_close" title="
	
	关闭" href="javascript:void 0">×</a></div>
	<div id="msg_title">黄山游记</div>
	<div id="msg_content">
	<video id="vid" width="100%" height="100%" controls="controls" src="images/黄山游记.mp4" 
	
	poster="http://www.youname.com/images/first.png" autoplay="autoplay"></video>
	</div></div>
	<script language="javascript">
		var Message={
			set : function() {//最小化与恢复状态切换
				var set = this.minbtn.status == 1 ? [ 0, 1, 'block', this.char[0],
						'最小化' ] : [ 1, 0, 'none', this.char[1], '恢复' ];
				this.minbtn.status = set[0];
				this.win.style.borderBottomWidth = set[1];
				this.content.style.display = set[2];
				this.minbtn.innerHTML = set[3]
				this.minbtn.title = set[4];
				this.win.style.top = this.getY().top;
			},
			close : function() {//关闭
				this.win.style.display = 'none';
				window.onscroll = null;
				
			},
			setOpacity : function(x) {//设置透明度
				var v = x >= 100 ? '' : 'Alpha(opacity=' + x + ')';
				this.win.style.visibility = x <= 0 ? 'hidden' : 'visible';//IE有绝对或相对定位内
	
	容不随父透明度变化的bug
				this.win.style.filter = v;
				this.win.style.opacity = x / 100;
			},
			show : function() {//渐显
				clearInterval(this.timer2);
				var me = this, fx = this.fx(0, 100, 0.1), t = 0;
				this.timer2 = setInterval(function() {
					t = fx();
					me.setOpacity(t[0]);
					if (t[1] == 0) {
						clearInterval(me.timer2)
					}
				}, 10);
			},
			fx : function(a, b, c) {//缓冲计算
				var cMath = Math[(a - b) > 0 ? "floor" : "ceil"], c = c || 0.1;
				return function() {
					return [ a += cMath((b - a) * c), a - b ]
				}
			},
			getY : function() {//计算移动坐标
				var d = document, b = document.body, e = document.documentElement;
				var s = Math.max(b.scrollTop, e.scrollTop);
				var h = /BackCompat/i.test(document.compatMode) ? b.clientHeight
						: e.clientHeight;
				var h2 = this.win.offsetHeight;
				return {
					foot : s + h + h2 + 2 + 'px',
					top : s + h - h2 - 2 + 'px'
				}
			},
			moveTo : function(y) {//移动动画
				clearInterval(this.timer);
				var me = this, a = parseInt(this.win.style.top) || 0;
				var fx = this.fx(a, parseInt(y));
				var t = 0;
				this.timer = setInterval(function() {
					t = fx();
					me.win.style.top = t[0] + 'px';
					if (t[1] == 0) {
						clearInterval(me.timer);
						me.bind();
					}
				}, 10);
			},
			bind : function() {//绑定窗口滚动条与大小变化事件
				var me = this, st, rt;
				window.onscroll = function() {
					clearTimeout(st);
					clearTimeout(me.timer2);
					me.setOpacity(0);
					st = setTimeout(function() {
						me.win.style.top = me.getY().top;
						me.show();
					}, 600);
				};
				window.onresize = function() {
					clearTimeout(rt);
					rt = setTimeout(function() {
						me.win.style.top = me.getY().top
					}, 100);
				}
			},
			init : function() {//创建HTML
				function $(id) {
					return document.getElementById(id)
				}
				;
				this.win = $('msg_win');
				var set = {
					minbtn : 'msg_min',
					closebtn : 'msg_close',
					title : 'msg_title',
					content : 'msg_content'
				};
				for ( var Id in set) {
					this[Id] = $(set[Id])
				}
				;
				var me = this;
				this.minbtn.onclick = function() {
					me.set();
					this.blur()
				};
				this.closebtn.onclick = function() {
					vid.pause();
					me.close()
				};
				this.char = navigator.userAgent.toLowerCase().indexOf('firefox') + 1 ? [
						'_', '::', '×' ]
						: [ '0', '2', 'r' ];//FF不支持webdings字体
				this.minbtn.innerHTML = this.char[0];
				this.closebtn.innerHTML = this.char[2];
				setTimeout(function() {//初始化最先位置
					me.win.style.display = 'block';
					me.win.style.top = me.getY().foot;
					me.moveTo(me.getY().top);
				}, 0);
				return this;
			}
		};
		Message.init();
	</script>

<!--------------end--- 广告弹窗----------------- -->  
    
    
</body>
</html>