<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>旅游-搜索</title>
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" href="css/search.css">
    <script src="js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/getParameter.js"></script>
      <script type="text/javascript">
    $(function(){
		url="${pageContext.request.contextPath}/index";
    	params={"method":"Hottravel"};
    	$.post(url,params,function(data){
    		$.each(data,function(i, item) {
                $("#id01").append(
                		"<li>"+
                		  "<div class='left'>"+
                 		"<img src="+item.rimage+" >"+
                 		"</div>"+
                       "<div class='right'>"+
                            "<p>"+item.rname+"</p>"+
                            "<p>网付价<span>&yen;<span>"+item.price+"</span>起</span>"+
                            "</p>"+
                        "</div>"+
                    "</li>"	
                );           
            });
    	},"json")

	})
    </script>
    
   <style type="text/css">
   
   a{
   text-decoration: none;
   }
   </style>
</head>
<body>
<!--引入头部-->
<%@include file="header.jsp"%>
    <div class="page_one">
        <div class="contant">
            <div class="crumbs">
                <img src="images/search.png" alt="">
                <p>黑马旅行><span>搜索结果</span></p>
            </div>
            <div class="xinxi clearfix">
            
      <!--刘海龙 分页展示功能  ...........................................................................  -->
                <div class="left">
                    <div class="header">
                        <span>商品信息</span>
                        <span class="jg">价格</span>
                    </div>
                    <ul>
                    <c:if test="${not empty pb.data}">
                    <!-- 循环体 循环遍历 商品信息 数据来源是 pb中的data -->
                    <c:forEach items="${pb.data}" var = "route">
                        <li>
                             <div class="img">
                             <a href="${pageContext.request.contextPath}/index?method=getRouteDetail&rid=${route.rid }">
                             <img src="${route.rimage}" alt="">
                             </a>
                             </div>
                            
                            <div class="text1" style="padding-left:35px" >
                             <a href="${pageContext.request.contextPath}/index?method=getRouteDetail&rid=${route.rid }">
                                <p style="font-size:15px">${route.rname}</p>
                                <p>${route.routeIntroduce}</p>
                                </a>
                            </div>  
                           <div class="price">
                                <p class="price_num">
                                    <span>&yen;</span>
                                    <span>${route.price}</span>
                                    <span>起</span>
                                </p>
                                <p><a href="index?method=getRouteDetail&rid=${route.rid }">查看详情</a></p>
                            </div> 
                        </li>
                    </c:forEach> 
                   </c:if>
                   <c:if test="${empty pb.data}">
                         <h1 align="center">抱歉,暂无此旅行项目!敬请期待..........</h1>
                   
                   </c:if>
                  <!-- 商品信息遍历 -->     
                   </ul>
                    <!-- 分页条功能实现 左5右4 -->
                   <%@include file="/pagefooter.jsp" %>
                </div>
   <!--刘海龙 分页展示功能  ............................................................................  -->
                   
                <div class="right">
                    <div class="top">
                        <div class="hot">HOT</div>
                        <span>热门推荐</span>
                    </div>
                    <ul id="id01">
                        <li>
                            <div class="left"><img src="images/04-search_09.jpg" alt=""></div>
                            <div class="right">
                                <p>清远新银盏温泉度假村酒店/自由行套...</p>
                                <p>网付价<span>&yen;<span>899</span>起</span>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!--引入头部-->
    <%@include file="footer.jsp"%>
    <!--导入布局js，共享header和footer-->
    <script type="text/javascript" src="js/include.js"></script>
</body>

</html>