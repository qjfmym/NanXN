<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>旅游网-登录</title>  
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
      <!--导入angularJS文件-->
    <script src="js/angular.min.js"></script>
	<!--导入jquery-->
	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript">
	/*================================================  */
		//加载事件
		$(function () {
			//给登录按钮注册点击事件
			$("#login").click(function () {
				document.loginInfo.submit();
	/*================================================  */
				/* //用户名，密码不为空提交异步登录请求
				var username = $("#username").val();
				var password = $("#password").val();
				if( username && password){
					//提交异步登录请求
					$.post(		
					    "${pageContext.request.contextPath}/user",//servlet地址
						$("#loginForm").serialize(),//表单所有数据
						function (data) {
							if(data==""){
							    //登录成功，跳转到首页
								location.href="index.jsp";							    
							}else{
							   //失败，显示消息
                                $("#errorMsg").text("用户名密码错误");	
							}
                        },
						"json"
					);
				}else{
				    $("#errorMsg").text("请输入用户名或密码");
				} */
            });
        });
	</script>
</head>

<body>
<!--引入头部-->
    <!-- 头部 end -->
    <section id="login_wrap">
        <div class="fullscreen-bg" style="background: url(images/sh.jpg) no-repeat;height: 618px;  ">
        	
        </div>
        <div class="login-box">
        	<div class="title">
        		<a href="${pageContext.request.contextPath}/index.jsp"><img src="images/login_logo.png" width="61px" height="56px" ></a>
        		<span>欢迎登录旅游账户</span>
        	</div>
        	<div class="login_inner"> 
				
				<!--登录错误提示消息-->
				<!--  ======================================================= -->
        		<div id="errorMsg" class="alert alert-danger" >${msg}</div>
				<form id="loginForm" action="${pageContext.request.contextPath}/user" method="post" name="loginInfo" accept-charset="utf-8">
        			<input type="hidden" name="method" value="login"/>
        		<!-- ======================================================== -->
					<input id="username" name="username" type="text" placeholder="请输入账号" autocomplete="off">
        			<input id="password" name="password" type="password" placeholder="请输入密码" autocomplete="off">
        			<div class="verify">
        			<!-- ============================================ -->
					<input name="ucode" type="text" placeholder="请输入验证码" autocomplete="off">
					<!-- ============================================ -->
					<span><img src="checkCode" alt="" onclick="changeCheckCode(this)"></span>
					<script type="text/javascript">
						//图片点击事件
						function changeCheckCode(img) {
							img.src="checkCode?"+new Date().getTime();
						}
					</script>
			</div>
			<!-- ======================================================== -->
			<div><img src="${pageContext.request.contextPath}/code1" onclick="this.src='${pageContext.request.contextPath}/code1?'+Math.random()" style="width:73px;height:22px"/></div>
			<div class="submit_btn">
        				<button type="button" id="login">登录</button>
        				<div class="auto_login">
        					<input type="checkbox" name="autoLogin" value="ok" class="checkbox" autocomplete="off">
        					<span>自动登录</span>
        				</div> 
        	<!-- ======================================================== -->			       				
        			</div>        			       		
        		</form>
        		<div class="reg">没有账户？<a href="${pageContext.request.contextPath}/register.jsp">立即注册</a></div>
        	</div>
        </div>
    </section>
    <!--引入尾部-->
    <%@include file="footer.jsp"%>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!--导入布局js，共享header和footer-->
    <script type="text/javascript" src="js/include.js"></script>
</body>

</html>