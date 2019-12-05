<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>旅游网-我的收藏</title>
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/ranking-list.css">
    <script src="js/jquery-3.3.1.js"></script>
    <!--导入获取传递过来参数js代码-->
    <script type="text/javascript" src="js/getParameter.js"></script>
    <script type="text/javascript">
    	$(function() {
    		var curPage = 1;
    		getFavoriterank(curPage);
		});	
    	
    	function getFavoriterank(curPage) {
    		$.post(
        			"index",
        			{method:"getFavoriteByUser",curPage:curPage},
        			function(data){
        				console.log(data);
        				var favoriteRank = $("#myfavorite");
        				favoriteRank.empty();
        				 if(data.data != ""){
            				$.each(data.data,function(index,temp){
            					/* favoriteRank.append('<li><span class="num one">'+(index+1)+'</span><a href="index?method=getRouteDetail&rid='+temp.rid+'"><img src="'+temp.rimage+'" alt=""></a><h4><a href="index?method=getRouteDetail&rid='+temp.rid+'">'+temp.rname+'</a></h4><p><b class="price">&yen;<span>'+temp.price+'</span>起</b><span class="shouchang">已收藏'+temp.count+'次</span></p></li>	'); */
            					 favoriteRank.append(
            							 "<div class='col-md-3' style='width:300,height=240'>"+
            	                     		"<a href='index?method=getRouteDetail&rid="+temp.rid+"'>"+
            	                     		"<img src="+temp.rimage+" height='160px' weight='275px'>"+
            	                     		"<div class='has_border'>"+
            	                     		"<span  style='width:270,height=100'>"+temp.rname.substring(0,40)+"...</span>"+
            	                     		"<div  style='width:270,height=20' class='price'>网付价<em>￥</em><strong>"+temp.price+"</strong><em>起</em></div>"+
            	                     		"</div>"+
            	                     		"</a>"+
            	                     	"</div>"
            					);
            				});
        				}
        				
        				// 分页
        				//首页
         				var html = "";
         				if(data.firstPage == data.curPage){
         					html += '<li class="threeword">首页</li>';
         				} else{
         					html += '<li class="threeword"><a href="javascript:void(0);" onclick="getFavoriterank(\''+data.firstPage+'\')">首页</a></li>';
         				}
         				
         				if(data.curPage == 1){
         					html += '<li class="threeword">上一页</li>';
         				} else {
         					html += '<li class="threeword"><a href="javascript:void(0);" onclick="getFavoriterank(\''+data.prePage+'\')">上一页</a></li>'
         				}
         				
         				// 中间页
         				if(data.totalPage < 10){ 
    	        				for(var i = 1;i<=data.totalPage;i++){
    	        					if(data.curPage == i){
    	        						html += '<li class="curPage" >'+i+'</li>'
    	        					} else {
    	        						html += '<li><a href="javascript:void(0);" onclick="getFavoriterank(\''+i+'\')">'+i+'</a></li>'	
    	        					}
    	        				}
         				} else {
         					if(data.curPage <= 6 ){
         						for(var i = 1;i<=10;i++){
     	        					if(data.curPage == i){
     	        						html += '<li class="curPage" >'+i+'</li>'
     	        					} else {
     	        						html += '<li><a href="javascript:void(0);" onclick="getFavoriterank(\''+i+'\')">'+i+'</a></li>'	
     	        					}
     	        				}
         					} else if(data.curPage >= 7 && data.curPage <= (data.totalPage-4)){
         						for(var i = (data.curPage-5);i<=(data.curPage+4);i++){
         							if(data.curPage == i){
    		        						html += '<li class="curPage" >'+i+'</li>'
    		        					} else {
    		        						html += '<li><a href="javascript:void(0);" onclick="getFavoriterank(\''+i+'\')">'+i+'</a></li>'
    		        					}
         						}
         					} else if(data.curPage >= 7 && data.curPage >= (data.totalPage-4)) {
         						for(var i = (data.totalPage-9);i<=data.totalPage;i++){
     	        					if(data.curPage == i){
     	        						html += '<li class="curPage" >'+i+'</li>'
     	        					} else {
     	        						html += '<li><a href="javascript:void(0);" onclick="getFavoriterank(\''+i+'\')">'+i+'</a></li>'	
     	        					}
         						}	
         					}
         				}
         			
         				
         				if(data.curPage == data.totalPage){
         					html += '<li class="threeword">下一页</li>';
         				} else {
         					html += '<li class="threeword"><a href="javascript:void(0);" onclick="getFavoriterank(\''+data.nextPage+'\')">下一页</a></li>';
         				}
         				// 尾页
         				if(data.totalPage == data.curPage){
         					html += '<li class="threeword">末页</li>';
         				} else {
         					html += '<li class="threeword"><a href="javascript:void(0);" onclick="getFavoriterank(\''+data.totalPage+'\')">末页</a></li>' 
         				}
                         $(".pageNum ul").html(html);
        				
        			},
        			"json"
        		)
		}
    
        //多条件搜索点击事件
        function  searchRouteFavoriteRank() {
            //从表单元素上获取多条件搜索的数据
            var rname2 = $("#rname2").val();//旅游线路名称搜索条件
            var startPrice = $("#startPrice").val();//最小金额搜索条件
            var endPrice = $("#endPrice").val();//最大金额搜索条件
            var curPage = 1;
            //调用提交异步请求获取多条件搜索分页的收藏排行榜数据
            getRoutesFavoriteRankByPage(rname2,startPrice,endPrice,curPage);
            //alert(rname2+startPrice+endPrice);
        }
        
        // 收藏排行榜异步搜索+动态分页
        function getRoutesFavoriteRankByPage(rname2,startPrice,endPrice,curPage){
        	$.post(
        			"index",
        			{method:"getFavoriterank",rname2:rname2,startPrice:startPrice,endPrice:endPrice,curPage:curPage},	
        			function(data){
        				var favoriteRank = $("#favoriteRank");
        				//var pageNum = $("#pageNum");
        				favoriteRank.empty();
        				//pageNum.empty();
        				if(data.data != ""){
	        				$.each(data.data,function(index,temp){
	        					favoriteRank.append('<li><span class="num one">'+(curpage+1)+'</span><a href="index?method=getRouteDetail&rid='+temp.rid+'"><img src="'+temp.rimage+'" alt=""></a><h4><a href="index?method=getRouteDetail&rid='+temp.rid+'">'+temp.rname+'</a></h4><p><b class="price">&yen;<span>'+temp.price+'</span>起</b><span class="shouchang">已收藏'+temp.count+'次</span></p></li>	');
	        					
	        				});
	        			
	        				//首页
	        				var html = "";
	        				if(data.firstPage == curPage){
	        					html += '<li class="threeword">首页</li>';
	        				} else{
	        					html += '<li class="threeword"><a href="javascript:void(0);" onclick="getRoutesFavoriteRankByPage(\''+rname2+'\',\''+startPrice+'\',\''+endPrice+'\',\''+data.firstPage+'\')">首页</a></li>';
	        				}
	        				
	        				if(data.curPage == 1){
	        					html += '<li class="threeword">上一页</li>';
	        				} else {
	        					html += '<li class="threeword"><a href="javascript:void(0);" onclick="getRoutesFavoriteRankByPage(\''+rname2+'\',\''+startPrice+'\',\''+endPrice+'\',\''+data.prePage+'\')">上一页</a></li>'
	        				}
	        				
	        				// 中间页
	        				if(data.totalPage < 10){ 
		        				for(var i = 1;i<=data.totalPage;i++){
		        					if(data.curPage == i){
		        						html += '<li class="curPage" >'+i+'</li>'
		        					} else {
		        						html += '<li><a href="javascript:void(0);" onclick="getRoutesFavoriteRankByPage(\''+rname2+'\',\''+startPrice+'\',\''+endPrice+'\',\''+i+'\')">'+i+'</a></li>'	
		        					}
		        				}
	        				} else {
	        					if(data.curPage <= 6 ){
	        						for(var i = 1;i<=10;i++){
	    	        					if(data.curPage == i){
	    	        						html += '<li class="curPage" >'+i+'</li>'
	    	        					} else {
	    	        						html += '<li><a href="javascript:void(0);" onclick="getRoutesFavoriteRankByPage(\''+rname2+'\',\''+startPrice+'\',\''+endPrice+'\',\''+i+'\')">'+i+'</a></li>'	
	    	        					}
	    	        				}
	        					} else if(data.curPage >= 7 && data.curPage <= (data.totalPage-4)){
	        						for(var i = (data.curPage-5);i<=(data.curPage+4);i++){
	        							if(data.curPage == i){
			        						html += '<li class="curPage" >'+i+'</li>'
			        					} else {
			        						html += '<li><a href="javascript:void(0);" onclick="getRoutesFavoriteRankByPage(\''+rname2+'\',\''+startPrice+'\',\''+endPrice+'\',\''+i+'\')">'+i+'</a></li>'
			        					}
	        						}
	        					} else if(data.curPage >= 7 && data.curPage >= (data.totalPage-4)) {
	        						for(var i = (data.totalPage-9);i<=data.totalPage;i++){
	    	        					if(data.curPage == i){
	    	        						html += '<li class="curPage" >'+i+'</li>'
	    	        					} else {
	    	        						html += '<li><a href="javascript:void(0);" onclick="getRoutesFavoriteRankByPage(\''+rname2+'\',\''+startPrice+'\',\''+endPrice+'\',\''+i+'\')">'+i+'</a></li>'	
	    	        					}
	        						}	
	        					}
	        				}
	        			
	        				
	        				if(data.curPage == data.totalPage){
	        					html += '<li class="threeword">下一页</li>';
	        				} else {
	        					html += '<li class="threeword"><a href="javascript:void(0);" onclick="getRoutesFavoriteRankByPage(\''+rname2+'\',\''+startPrice+'\',\''+endPrice+'\',\''+data.nextPage+'\')">下一页</a></li>';
	        				}
	        				// 尾页
	        				if(data.totalPage == curPage){
	        					html += '<li class="threeword">末页</li>';
	        				} else {
	        					html += '<li class="threeword"><a href="javascript:void(0);" onclick="getRoutesFavoriteRankByPage(\''+rname2+'\',\''+startPrice+'\',\''+endPrice+'\',\''+data.totalPage+'\')">末页</a></li>' 
	        				}
	                        $(".pageNum ul").html(html);
        				
        				} else {
        					favoriteRank.append('<h1 align="center">查无数据</h1>')
        				}
        			},
        			"json"
        	)
        } 

    </script>
  <!--   <style type="text/css">
			div.col-md-3 span{
				height:60px,
				width:270px
			}
	</style> -->
</head>
<body>
<!--引入头部-->
<%@include file="header.jsp"%>
<div class="contant" style="margin-top: 20px;">
<!--     <div class="shaixuan">
        <span>线路名称</span>
        <input type="text" id="rname2" >
        <span>金额</span>
        <input type="text" id="startPrice" value="0">~<input type="text" id="endPrice" value="0">
        <button onclick="searchRouteFavoriteRank();">搜索</button>
    </div> -->
    <div class="list clearfix">
        <ul id="myfavorite" >
        	<h1 align="center">您尚未收藏项目,快去看看吧....</h1>
            
        </ul>
    </div>
    <div class="pageNum">
        <ul>
                           
        </ul>
    </div>
</div>
<!--导入底部-->
<%@include file="footer.jsp"%>
<!--导入布局js，共享header和footer-->
<script type="text/javascript" src="js/include.js"></script>
</body>
</html>