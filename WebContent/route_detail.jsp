<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>路线详情</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/mdialog.css">
<link rel="stylesheet" type="text/css" href="css/comment.css">
<link rel="stylesheet" type="text/css" href="css/route-detail.css">

<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
</head>

<body>
	<!--引入头部-->
	<%@include file="header.jsp"%>
	 <!-- 详情 start -->   
    <div class="wrap">
        <div class="bread_box">
            <a href="${pageContext.request.contextPath}">首页</a>
            <span> &gt;</span>
            <!-- 分类查询路径(未添加) -->
            <a href="#">${route.category.cname }</a><span> &gt;</span>
            <a href="#">${route.rname }</a>
        </div>
        <div class="prosum_box">
            <dl class="prosum_left">
                <dt>
                  <img alt="" class="big_img" style="width:570px;height:340px" src="${pageContext.request.contextPath}/${route.rimage}">
                </dt>
                <dd>
                    <a class="up_img up_img_disable"></a>
                    <a title="" class="little_img" data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m40920d0669855e745d97f9ad1df966ebb.jpg">
                        <img src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m20920d0669855e745d97f9ad1df966ebb.jpg">
                    </a>
                    <a title="" class="little_img cur_img" data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m49788843d72171643297ccc033d9288ee.jpg">
                        <img src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m29788843d72171643297ccc033d9288ee.jpg">
                    </a>
                    <a title="" class="little_img" data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m4531a8dbceefa2c44e6d0e35627cd2689.jpg">
                        <img src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m2531a8dbceefa2c44e6d0e35627cd2689.jpg">
                    </a>
                    <a title="" class="little_img" data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m46d8cb900e9f6c0a762aca19eae40c00c.jpg">
                        <img src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m26d8cb900e9f6c0a762aca19eae40c00c.jpg">
                    </a>
                    <a title="" class="little_img" data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m45ea00f6eba562a767b5095bbf8cffe07.jpg" style="display:none;">
                        <img src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m25ea00f6eba562a767b5095bbf8cffe07.jpg">
                    </a>
                    <a title="" class="little_img" data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m4265ec488cd1bc7ce749bc8c9b34b87bc.jpg" style="display:none;">
                        <img src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m2265ec488cd1bc7ce749bc8c9b34b87bc.jpg">
                    </a>
                    <a title="" class="little_img" data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m4e7e964909d7dd1a9f6e5494d4dc0c847.jpg" style="display:none;">
                        <img src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m2e7e964909d7dd1a9f6e5494d4dc0c847.jpg">
                    </a>
                    <a title="" class="little_img" data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m467db00e1b76718fab0fe8b96e10f4d35.jpg" style="display:none;">
                        <img src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m267db00e1b76718fab0fe8b96e10f4d35.jpg">
                    </a>
                    <a title="" class="little_img" data-bigpic="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size4/201703/m487bbbc6e43eba6aa6a36cc1a182f7a20.jpg" style="display:none;">
                        <img src="http://www.jinmalvyou.com/Public/uploads/goods_img/img_size2/201703/m287bbbc6e43eba6aa6a36cc1a182f7a20.jpg">
                    </a>
                    <a class="down_img down_img_disable" style="margin-bottom: 0;"></a>
                </dd>
            </dl>
            <div class="prosum_right">
               <p class="pros_title">${route.rname }</p>
                <p class="hot">1-2月出发，网付立享￥1099/2人起！爆款位置有限，抢完即止！</p>
                <div class="pros_other">
                    <p>经营商家  ：${route.seller.sname }</p>
                    <p>咨询电话 : ${route.seller.consphone }</p>
                    <p>地址 ：${route.seller.address }</p>  
                </div>
                <div class="pros_price">
                    <p class="price"><strong>¥${route.price }</strong><span>起</span>
                    <a href="${pageContext.request.contextPath}/index?method=weixinpay&rid=${route.rid}" ><img src="${pageContext.request.contextPath}/images/pay.png"></a>
                    </p>
                    <p class="collect">
                    
                       <a onclick="addFavorite()" id="addID" class="btn already" disabled="disabled"><i class="glyphicon glyphicon-heart-empty"></i>点击收藏</a>
                       <span>已收藏100次</span>
                    </p>
                </div>        
            </div>
        </div>




		<!-- 用户评论模块  ----------------------------------->
		<div class="container">
			<div class="commentbox">
				<textarea cols="80" rows="50" placeholder="来说几句吧......"
					class="mytextarea" id="comment_content"></textarea>
				<div class="btn btn-info pull-right" id="comment">评论</div>
			</div>
			<div class="comment-list">
			
			</div>
		</div>
		<!-- 用户评论结束*----------------------------- -->
		<!-- 评论分页---------------------------------- -->
		<div class="pageNum" style="PADDING-LEFT: 38%;">
		<ul >
		
		</ul>
		</div>
		<!-- 评论分页结束-------------------------------- -->
		<div class="you_need_konw">
			<span>旅游须知</span>
			<div class="notice">
				<p>
					1、旅行社已投保旅行社责任险。建议游客购买旅游意外保险 <br>
				<p>2、旅游者参加打猎、潜水、海边游泳、漂流、滑水、滑雪、滑草、蹦极、跳伞、滑翔、乘热气球、骑马、赛车、攀岩、水疗、水上飞机等属于高风险性游乐项目的，敬请旅游者务必在参加前充分了解项目的安全须知并确保身体状况能适应此类活动；如旅游者不具备较好的身体条件及技能，可能会造成身体伤害。</p>

				<p>3、参加出海活动时，请务必穿着救生设备。参加水上活动应注意自己的身体状况，有心脏病、冠心病、高血压、感冒、发烧和饮酒及餐后不可以参加水上活动及潜水。在海里活动时，严禁触摸海洋中各种鱼类，水母，海胆，珊瑚等海洋生物，避免被其蛰伤。老人和小孩必须有成年人陪同才能参加合适的水上活动。在海边游玩时，注意保管好随身携带的贵重物品。</p>

				<p>4、根据中国海关总署的规定，旅客在境外购买的物品，在进入中国海关时可能需要征收关税。详细内容见《中华人民共和国海关总署公告2010年第54号文件》。</p>

				<p>5、建议出发时行李托运，贵重物品、常用物品、常用药品、御寒衣物等请随身携带，尽量不要托运。行李延误属于不可抗力因素，我司将全力协助客人跟进后续工作，但我司对此不承担任何责任。</p>
				<p>
					1、旅行社已投保旅行社责任险。建议游客购买旅游意外保险 <br>
				<p>2、旅游者参加打猎、潜水、海边游泳、漂流、滑水、滑雪、滑草、蹦极、跳伞、滑翔、乘热气球、骑马、赛车、攀岩、水疗、水上飞机等属于高风险性游乐项目的，敬请旅游者务必在参加前充分了解项目的安全须知并确保身体状况能适应此类活动；如旅游者不具备较好的身体条件及技能，可能会造成身体伤害。</p>

				<p>3、参加出海活动时，请务必穿着救生设备。参加水上活动应注意自己的身体状况，有心脏病、冠心病、高血压、感冒、发烧和饮酒及餐后不可以参加水上活动及潜水。在海里活动时，严禁触摸海洋中各种鱼类，水母，海胆，珊瑚等海洋生物，避免被其蛰伤。老人和小孩必须有成年人陪同才能参加合适的水上活动。在海边游玩时，注意保管好随身携带的贵重物品。</p>

				<p>4、根据中国海关总署的规定，旅客在境外购买的物品，在进入中国海关时可能需要征收关税。详细内容见《中华人民共和国海关总署公告2010年第54号文件》。</p>

				<p>5、建议出发时行李托运，贵重物品、常用物品、常用药品、御寒衣物等请随身携带，尽量不要托运。行李延误属于不可抗力因素，我司将全力协助客人跟进后续工作，但我司对此不承担任何责任。</p>
			</div>
		</div>
	</div>
	<!-- 详情 end -->

	<!--引入头部-->
	<%@include file="footer.jsp"%>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!--  <script src="js/jquery-3.3.1.js"></script>   -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!--导入布局js，共享header和footer-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/include.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/getParameter.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.comment.js"></script>
	<script src="${pageContext.request.contextPath}/js/zepto.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/mdialog.js"></script>
	
	<script>
	 //获取rid
    var rid = getParameter("rid");
     $(function () {
         //发送异步请求,获取旅游线路数据
         $.post(
             "${pageContext.request.contextPath}/index",
             {method:"findRouteByRid",rid:rid},
             function(resultInfo){
                 if(resultInfo.flag){
                     //正常获取结果route
                     var route = resultInfo.data;
                     //更新页面面包屑导航信息
                     var html = "<a href='${pageContext.request.contextPath}/index.jsp'>首页</a>\n"+
                     "<span> &gt;</span>\n "+"<a href='#'>"+route.category.cname+"</a><span> &gt;</span>\n"+
                     "<a href='#'>"+route.rname+"</a>";
                     $(".bread_box").html(html);

                     //更新所属商家信息
                     html = "<p>经营商家  ："+route.seller.sname+"</p>\n" +
                         "                    <p>咨询电话 : "+route.seller.consphone+"</p>\n" +
                         "                    <p>地址 ： "+route.seller.address+"</p> ";
                     $(".pros_other").html(html);

                     //更新线路名称
                     $(".pros_title").html(route.rname);
                     //更新线路介绍
                     $(".hot").html(route.routeIntroduce);
                     //更新价格
                     $(".price strong").html("&yen;"+route.price);
                     //更新收藏数量
                     $(".collect span").html("已收藏"+route.count+"次");

                     //更新轮播图片(大小图片)
                     html="<a class=\"up_img up_img_disable\"></a>";
                     //中间循环每组大小图片拼接html
                     for(var i=0;i<route.routeImgList.length;i++){
                         var routeImg = route.routeImgList[i];
                         //前4个显示样式
                         if(i<4){
                             html+="<a title=\"\" class=\"little_img\" data-bigpic=\""+routeImg.bigPic+"\" style=\"\">\n" +
                                 "                        <img src=\""+routeImg.smallPic+"\">\n" +
                                 "                    </a>";
                         }else{
                             //默认不显示的图片
                             html+="<a title=\"\" class=\"little_img\" data-bigpic=\""+routeImg.bigPic+"\" style=\"display: none;\">\n" +
                                 "                        <img src=\""+routeImg.smallPic+"\">\n" +
                                 "                    </a>";
                         }
                     }
                     html+="<a class=\"down_img down_img_disable\" style=\"margin-bottom: 0;\"></a>";
                     $(".prosum_left dd").html(html);


                     //在运行前端已有的功能代码
                     imgGo();


                     

                 }else{
                     alert(resultInfo.errorMsg);
                 }
             },
             "json"
         );

     });



     $(function () {
         /*异步提交请求判断当前线路是否被收藏*/
         $.post(
             "${pageContext.request.contextPath}/index",
             {method:"isFavoriteByRid","rid":rid},
             function (resultInfo) {
                 if(resultInfo.flag){
                     //判断是否收藏
                     if(!resultInfo.data){
                         //只考虑没收藏(因为默认就是已收藏效果)
                         // class="btn already" disabled="disabled"将这个里面的class="already"和disabled去掉
                         $("#addID").removeClass("already");
                         $("#addID").removeAttr("disabled");
                     }
                 }else{
                     alert(resultInfo.errorMsg);
                 }
             },
             "json"
         );
     });

     //添加收藏点击事件
     function addFavorite() {
         //发送异步请求添加收藏并返回最新的收藏数量
         $.post(
             "${pageContext.request.contextPath}/index",
             {method:"addFavorite",rid:rid},
             function (resultInfo) {
                 if(resultInfo.flag){
                     //判断收藏数量是否>0
                     if(resultInfo.data==0){
                         //没有登录,跳转到登录页面
                         location.href="login.jsp";
                     }else if(resultInfo.data>0){
                         //收藏成功,更新为class="btn already" disabled="disabled"
                         $(".collect a").addClass("already");
                         $(".collect a").attr("disabled","disabled");
                         //$(".collect a").prop("disabled",true);
                         //点击收藏去掉点击事件(解绑事件)
                         $(".collect a").off("click");
                         //更新收藏数量
                         $(".collect span").html("已收藏"+resultInfo.data+"次");
                     }
                 }else{
                     alert(resultInfo.errorMsg);
                 }
             },
             "json"
         );
     }
     /*前端提供的大小图片切换效果,我们不动*/
 function  imgGo() {

     //焦点图效果
     //点击图片切换图片
     $('.little_img').on('mousemove', function() {
         $('.little_img').removeClass('cur_img');
         var big_pic = $(this).data('bigpic');
         $('.big_img').attr('src', big_pic);
         $(this).addClass('cur_img');
     });
        //上下切换
     var picindex = 0;
     var nextindex = 4;
     $('.down_img').on('click',function(){
         var num = $('.little_img').length;
         if((nextindex + 1) <= num){
             $('.little_img:eq('+picindex+')').hide();
             $('.little_img:eq('+nextindex+')').show();
             picindex = picindex + 1;
             nextindex = nextindex + 1;
         }
     });
     $('.up_img').on('click',function(){
         var num = $('.little_img').length;
         if(picindex > 0){
             $('.little_img:eq('+(nextindex-1)+')').hide();
             $('.little_img:eq('+(picindex-1)+')').show();
             picindex = picindex - 1;
             nextindex = nextindex - 1;
         }
     });
     //自动播放
     var timer = setInterval("auto_play()", 5000);
 }

 //自动轮播方法
 function auto_play() {
     var cur_index = $('.prosum_left dd').find('a.cur_img').index();
     cur_index = cur_index - 1;
     var num = $('.little_img').length;
     var max_index = 3;
     if ((num - 1) < 3) {
         max_index = num - 1;
     }
     if (cur_index < max_index) {
         var next_index = cur_index + 1;
         var big_pic = $('.little_img:eq(' + next_index + ')').data('bigpic');
         $('.little_img').removeClass('cur_img');
         $('.little_img:eq(' + next_index + ')').addClass('cur_img');
         $('.big_img').attr('src', big_pic);
     } else {
         var big_pic = $('.little_img:eq(0)').data('bigpic');
         $('.little_img').removeClass('cur_img');
         $('.little_img:eq(0)').addClass('cur_img');
         $('.big_img').attr('src', big_pic);
     }
 }
		
		//初始化评论的页面数据
		$(function(){
			 var obj = new Object();
			$("#comment").click(function(){
				obj.img="./images/user.jpg";
				obj.replyName="低调的繁华";
				obj.content=$("#comment_content").val();
				obj.browse="上海";
				obj.osname="win10";
				obj.replyBody="";
				obj.time="2019-09-09";
				/* $(".comment-list").addCommentList({data:[],add:obj});   */
				clearFun();
				//将评论添加到数据库
				$.ajax({
					url : "${pageContext.request.contextPath}/index",
					type : 'post',
					data:{"method":"addComment","comment":obj.content,"rid":${route.rid}},
					success : function(date) {
						new TipBox({type:'success',str:'评论成功!',hasBtn:true});
					}
				});
				//添加评论后刷新界面
				fun('1');
			});
			//初始化评论的数据
			fun('1');
		})
		
		//加载初始化的数据  根据路线的rid值
		function fun(pageNumber){
	   //清空评论
	   $(".comment-list").html("");
	    var obj = new Object();
		$.ajax({
				url : "${pageContext.request.contextPath}/index",
				type : 'get',
				data:{"method":"findAllComment","rid":${route.rid},"pageNumber":pageNumber},
				success:function(date) {
			  	   console.log(date);
			  	   var datarr = date.data;
			  	   var len = datarr.length;
			  	   console.log(len);
				 for(var i =len-1 ;i>=0;i--){
					obj.img=datarr[i].image;
					obj.replyName=datarr[i].name;
					obj.content=datarr[i].comment;
					obj.browse="上海";
					obj.osname="win10";
					obj.replyBody=""; 
                    var date1 = new Date(datarr[i].craeteDdate);
                    obj.time = date1.getFullYear() + "-" + (date1.getMonth() + 1) + "-" + date1.getDate()+"  "+date1.getHours()+":"+date1.getMinutes()+":"+date1.getSeconds();
                    console.log(obj.time);
                    $(".comment-list").addCommentList({data:[],add:obj});
				  }
				 
				/* 分页 */ 
				//首页
				//首页
			  
 				var html = "";
 				if(date.firstPage == date.curPage){
 					html += '<li class="threeword">首页</li>';
 				} else{
 					html += '<li class="threeword"><a href="javascript:void(0);"  onclick="fun(\''+date.firstPage+'\')">首页</a></li>';
 				}
 				
 				if(date.curPage == 1){
 					html += '<li class="threeword">上一页</li>';
 				} else {
 					html += '<li class="threeword"><a href="javascript:void(0);" onclick="fun(\''+(date.curPage-1)+'\')">上一页</a></li>'
 				}
 				
 				// 中间页
 				if(date.totalPage < 10){ 
        				for(var i = 1;i<=date.totalPage;i++){
        					if(date.curPage == i){
        						html += '<li class="curPage" >'+i+'</li>'
        					} else {
        						html += '<li><a href="javascript:void(0);" onclick="fun(\''+i+'\')">'+i+'</a></li>'	
        					}
        				}
 				} else {
 					if(date.curPage <= 6 ){
 						for(var i = 1;i<=10;i++){
	        					if(date.curPage == i){
	        						html += '<li class="curPage" >'+i+'</li>'
	        					} else {
	        						html += '<li><a href="javascript:void(0);" onclick="fun(\''+i+'\')">'+i+'</a></li>'	
	        					}
	        				}
 					} else if(date.curPage >= 7 && date.curPage <= (date.totalPage-4)){
 						for(var i = (date.curPage-5);i<=(date.curPage+4);i++){
 							if(date.curPage == i){
	        						html += '<li class="curPage" >'+i+'</li>'
	        					} else {
	        						html += '<li><a href="javascript:void(0);" onclick="fun(\''+i+'\')" >'+i+'</a></li>'
	        					}
 						}
 					} else if(date.curPage >= 7 && date.curPage >= (date.totalPage-4)) {
 						for(var i = (date.totalPage-9);i<=date.totalPage;i++){
	        					if(date.curPage == i){
	        						html += '<li class="curPage" >'+i+'</li>'
	        					} else {
	        						html += '<li><a href="javascript:void(0);" onclick="fun(\''+i+'\')">'+i+'</a></li>'	
	        					}
 						}	
 					}
 				}
 			
 				if(date.curPage == date.totalPage){
 					html += '<li class="threeword">下一页</li>';
 				} else {
 					html += '<li class="threeword"><a href="javascript:void(0);" onclick="fun(\''+(date.curPage+1)+'\')">下一页</a></li>';
 				}
 				// 尾页
 				if(date.totalPage == date.curPage){
 					html += '<li class="threeword">末页</li>';
 				} else {
 					html += '<li class="threeword"><a href="javascript:void(0);" onclick="fun(\''+date.totalPage+'\')">末页</a></li>' 
 				}
                 $(".pageNum ul").html(html);
				},
				dataType:"json"
			});
		}
		
		
		
		//清除评论模块的评论的内容
		function clearFun() {
			var comment_content = document.getElementById("comment_content");
			comment_content.value="";
			
		}
	</script>
</body>

</html>