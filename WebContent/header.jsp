<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

 <!-- ---------------------- 导航条字体 开始 ------------------------------ -->
			<style type="text/css">
				#cateid a{
					font-size: 18px
				}
			</style>
<!-- ------------------------ 导航条字体  结束------------------------------ -->

<!-- 头部 start -->
    <header id="header">
        <!--<div class="top_banner">
            <img src="images/top_banner.jpg" alt=""> 
        </div>--> 
       <div class="shortcut">
        <c:if test="${empty user}">
            <!-- 未登录状态  -->
            <div class="login_out">
                <a href="login.jsp">登录</a>
             
                <a href="register.jsp">注册</a>
            </div>
           </c:if>
            <!-- 登录状态  -->
            <c:if test="${ not empty user}">
          	 <div class="login">
                <span>欢迎回来，${user.username}</span>
                <a href="myfavorite.jsp" class="collection">我的收藏</a>
                <a href="javaScript:void(0)" onclick="loginout()">退出系统</a>
            </div>
            </c:if>
        </div>
        <div class="header_wrap">
            <div class="topbar">
                <div class="logo">
                    <a href=""><img src="img/nxl.gif"  width="80px" height="50px" alt=""></a>
                    <span style="color:orange; font-size: 22px " class="nan">南小鸟</span>
                </div>
                
               <!--  搜索标签 --------------------------------------------------------------------------->
               <div class="search">
                    <input name="content" id="content" type="text" placeholder="请输入路线名称" class="search_input" autocomplete="off" style="height:35px">
                    <a href="javascript:search();" class="search-button">搜索</a>
                </div>
                <!-- 搜索标签结束-------------------------------------------------------------------------- -->
                
               
            </div>
        </div>
           <!-- 首页导航 -->
    <div class="navitem">
    
        <!----------------------------给导航条添加id  --------------------------------->
        <ul id="cateid" class="nav">
			<li><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
			<li><a href="Hotel.jsp">酒店</a></li>
			<li><a href="gonglue.jsp">攻略</a></li>
        </ul>
    </div>
    </header>
    <!-- 头部 end -->
    <script type="text/javascript" src="js/getParameter.js"></script>
    <script type="text/javascript">
    //退出登录
    function loginout() {
		if(confirm("您是否要退出登陆?")){
			 location.href="${pageContext.request.contextPath}/user?method=logout";
		  }
		}
        //加载事件
        $(function () {
            /* ----------------   导航条  开始----------------- */	
       			var url = "${pageContext.request.contextPath}/index";
       			var params = {"method":"findAllCategory"};
       			$.post(url,params,function(data){
       				$.each(data,function(index,ele){
       					//alert(ele.cname);
       					$("#cateid").append("<li><a href='${pageContext.request.contextPath}/index?method=findRouteByCidPage&curPage=1&cid="+ele.cid+"'>"+ele.cname+"</a></li>");
       				});
       				//判断用户是否登陆拼接收藏排行榜
       			      /* var username  = '${user.username}';
       				   if(username!=null&&username!=""){ */
       					$("#cateid").append("<li><a href=\"favoriterank.jsp\">收藏排行榜</a></li>");
       				  /* } */ 
       			},"json");
       		/* ----------------  导航条  结束----------------- */	
            //获取url上的rname,更新到搜索输入框里面
            var rname =decodeURI( getParameter("rname"));
            if(rname && rname!="null"){
                //更新页面上
                $("#content").val(rname);
            }
        });
   
          //搜索点击事件
        function search(){
            //获取搜索框文本值
            var rname =$("#content").val();
            location.href = "${pageContext.request.contextPath}/index?method=getRoute&rname="+rname+"&curPage=1";
        }
    </script>
  
