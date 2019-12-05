<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		 <!-- 分页条功能实现 左5右4 -->
		  <div class="page_num_inf">
                        <i></i> 共
                        <span>${pb.totalPage}</span>页<span>${pb.count}</span>条
                    </div>
                    <div class="pageNum">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/index?method=findRouteByPage&cid=${cid}&curPage=${pb.firstPage}">首页</a></li>
                            <c:if test="${pb.curPage==1}">
                             <li class="threeword">上一页</li>
                            
                            </c:if>
                            <c:if test="${pb.curPage>1}">

                             <li class="threeword"><a href="${pageContext.request.contextPath}/index?method=findRouteByPage&cid=${cid}&curPage=${pb.prePage}">上一页</a></li>
                            </c:if>
                            <!--中间页码  -->
                            <!--如果总页码数大于10  -->
           					<c:if test="${pb.totalPage>=10}">
           					
           					<!--页码小于7的时候展示情况  -->
                            <c:if test="${pb.curPage<7}">
                           <c:forEach begin="1" end="10" step="1" var="n">
							<c:if test="${pb.curPage==n}">
							  	<li class="curPage">${n}</li>
							  </c:if>
							  <c:if test="${pb.curPage!=n}">
								<li ><a href="${pageContext.request.contextPath}/index?method=findRouteByPage&cid=${cid}&curPage=${n}">${n}</a></li>
						  </c:if>
						</c:forEach>
						</c:if>
						 <!--页码小于7的时候展示情况  -->
						 
						 <!--页码大于7展示情况  小于总数-4的情况 -->
						 <c:if test="${pb.curPage>=7&&pb.curPage<=(pb.totalPage-4)}">
						  <c:forEach begin="${pb.curPage-5}" end="${pb.curPage+4}" step="1" var="n">
						  	<c:if test="${pb.curPage==n}">
							  	<li class="curPage">${n}</li>
							  </c:if>
							  <c:if test="${pb.curPage!=n}">
								<li ><a href="${pageContext.request.contextPath}/index?method=findRouteByPage&cid=${cid}&curPage=${n}">${n}</a></li>
						  </c:if>
						  </c:forEach>  
                         </c:if>
                         
                         <c:if test="${pb.curPage>(pb.totalPage-4)&&pb.curPage<=pb.totalPage}">
                         	<c:forEach begin="${pb.totalPage-9}" end="${pb.totalPage}" step="1" var="n">
						  	<c:if test="${pb.curPage==n}">
							  	<li class="curPage">${n}</li>
							  </c:if>
							  <c:if test="${pb.curPage!=n}">
								<li ><a href="${pageContext.request.contextPath}/index?method=findRouteByPage&cid=${cid}&curPage=${n}">${n}</a></li>
						  </c:if>
						  </c:forEach> 
                         
                         
                         </c:if>
                         
                         
                         </c:if>
                         
                         <!-- 如果总页码数小于10的情况 -->
                         <c:if test="${pb.totalPage<10}">
                          <c:forEach begin="1" end="${pb.totalPage}" step="1" var="n">
						  	<c:if test="${pb.curPage==n}">
							  	<li class="curPage">${n}</li>
							  </c:if>
							  <c:if test="${pb.curPage!=n}">
								<li ><a href="${pageContext.request.contextPath}/index?method=findRouteByPage&cid=${cid}&curPage=${n}">${n}</a></li>
						  </c:if>
						  </c:forEach>  
                         
                         
                         </c:if>
                               
                            <!-- <li class="curPage"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li><a href="#">9</a></li>
                            <li><a href="#">10</a></li> -->
                            
                            
                         <!--中间页码  -->
                            
                            
                      <c:if test="${pb.curPage == pb.totalPage}">
                      		 <li class="threeword">下一页</li>
                      </c:if>   

                       <c:if test="${pb.curPage < pb.totalPage}">
                            <li class="threeword"><a href="${pageContext.request.contextPath}/index?method=findRouteByPage&cid=${cid}&curPage=${pb.nextPage}">下一页</a></li>
                         </c:if>   
                            
                            <li class="threeword"><a href="${pageContext.request.contextPath}/index?method=findRouteByPage&cid=${cid}&curPage=${pb.totalPage}">末页</a></li>
                        </ul>
                        
                    </div>
                           <!-- 分页条功能实现 左5右4 -->
              	 <!-- 分页条..........................................................  -->

</body>
</html>