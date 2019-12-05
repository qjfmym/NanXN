<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
      <script type="text/javascript">
    $(function(){
		url="${pageContext.request.contextPath}/index";
    	params={"method":"Hottravel"};
    	$.post(url,params,function(data){
    		$.each(data,function(i, item) {
                $("#id02").append(
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
    
</head>
<body>
<!--引入头部-->
<%@include file="header.jsp"%>

    <div class="page_one">
        <div class="contant">
            <div class="crumbs">
                <img src="images/search.png" alt="">
                <p>旅行><span>搜索结果</span></p>
            </div>
            <div class="xinxi clearfix">
                <div class="left">
                    <div class="header">
                        <span>商品信息</span>
                        <span class="jg">价格</span>
                    </div>
                    <!-- 搜索展示数据 -->
                     <ul>
   					
                    <c:forEach items="${pageBean.data}" var="route">
                        <li>
                            <div class="img"><img width="300px" src="${pageContext.request.contextPath}/${route.rimage }" alt=""></div>
                            <div class="text1">
                                <p>${route.rname }</p>
                                <br/>
                                <p>${route.routeIntroduce }</p>
                            </div>
                            <div class="price">
                                <p class="price_num">
                                    <span>&yen;</span>
                                    <span>${route.price }</span>
                                    <span>起</span>
                                </p>
                                <p><a href="index?method=getRouteDetail&rid=${route.rid }">查看详情</a></p>
                            </div>
                        </li>
                       </c:forEach>
                    </ul>
                    <div class="pageNum">
                        <ul >
                            <li class="threeword">
                            <a href="${pageContext.request.contextPath}/index?method=getRoute&rname=${rname}&curPage=${pageBean.firstPage}">首页</a></li>
                            <c:if test="${pageBean.curPage==1}">
                             	<li class="threeword">上一页</li>
                            </c:if>
                            <c:if test="${pageBean.curPage>1}">
                            	 <li class="threeword"><a href="${pageContext.request.contextPath}/index?method=getRoute&rname=${rname}&curPage=${pageBean.prePage}">上一页</a></li>
                            </c:if>
                            <!--中间页码  -->
                            <c:if test="${pageBean.totalPage <10 }">
	                            <c:forEach begin="1" end="${pageBean.totalPage }" var="n">
	                            	<c:if test="${pageBean.curPage == n }">
	                            		<li class="curPage" >${n}</li>
	                            	</c:if>
	                            	<c:if test="${pageBean.curPage != n }">
	                            		<li><a href="${pageContext.request.contextPath}/index?method=getRoute&rname=${rname}&curPage=${n}">${n}</a></li>
	                            	</c:if>
	                            </c:forEach>
                            </c:if>
                            <c:if test="${pageBean.totalPage > 10 }">
                            	<c:if test="${pageBean.curPage <= 6 }">
                            		<c:forEach begin="1" end="10" var="n">
		                            	<c:if test="${pageBean.curPage == n }">
		                            		<li class="curPage" >${n}</li>
		                            	</c:if>
		                            	<c:if test="${pageBean.curPage != n }">
		                            		<li><a href="${pageContext.request.contextPath}/index?method=getRoute&rname=${rname}&curPage=${n}">${n}</a></li>
		                            	</c:if>
	                            	</c:forEach>
                            	</c:if>
                            	
                            	<c:if test="${pageBean.curPage >= 7 && pageBean.curPage <= (pageBean.totalPage - 4)}">
                            		<c:forEach begin="${pageBean.curPage - 5 }" end="${pageBean.curPage + 4 }" var="n">
		                            	<c:if test="${pageBean.curPage == n }">
		                            		<li class="curPage" >${n}</li>
		                            	</c:if>
		                            	<c:if test="${pageBean.curPage != n }">
		                            		<li><a href="${pageContext.request.contextPath}/index?method=getRoute&rname=${rname}&curPage=${n}">${n}</a></li>
		                            	</c:if>
	                            	</c:forEach>
                            	</c:if>
                            	
                            	
                            	<c:if test="${pageBean.curPage >= 7 && pageBean.curPage >= (pageBean.totalPage - 4)}">
                            		<c:forEach begin="${pageBean.totalPage - 9 }" end="${pageBean.totalPage}" var="n">
		                            	<c:if test="${pageBean.curPage == n }">
		                            		<li class="curPage" >${n}</li>
		                            	</c:if>
		                            	<c:if test="${pageBean.curPage != n }">
		                            		<li><a href="${pageContext.request.contextPath}/index?method=getRoute&rname=${rname}&curPage=${n}">${n}</a></li>
		                            	</c:if>
	                            	</c:forEach>
                            	</c:if>
	               
                            </c:if>
                            <!-- 中间页码结束 -->
                      <c:if test="${pageBean.curPage == pageBean.totalPage}">
                      		 <li class="threeword">下一页</li>
                      </c:if>   

                       <c:if test="${pageBean.curPage < pageBean.totalPage}">
                            <li class="threeword"><a href="${pageContext.request.contextPath}/index?method=getRoute&rname=${rname}&curPage=${pageBean.nextPage}">下一页</a></li>
                         </c:if>   
                            
                            <li class="threeword"><a href="${pageContext.request.contextPath}/index?method=getRoute&rname=${rname}&curPage=${pageBean.totalPage}">末页</a></li>
                        </ul>
                        <!-- 搜索展示数据+分页技术end -->
                    </div>
                </div>
                <div class="right">
                    <div class="top">
                        <div class="hot">HOT</div>
                        <span>热门推荐</span>
                    </div>
                    <ul id="id02">
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
