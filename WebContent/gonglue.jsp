<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>旅游攻略</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/cssGL.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/common.css">
</head>
<body>
<!--引入头部-->
    <%@include file="header.jsp"%>
	<!--攻略游记-->
	<div class="qn_note bgff">
		<div class="wrap clrfix">
			<div class="note_lt lf" id="js_recommend">
				<div class="title clrfix">
					<h2 class="lf">攻略游记</h2>
					<ul class="rt">
						<li class="title_item current"><a href="#"
							data-beacon="hot_youji"
							data-url="https://travel.qunar.com/travelbook/api/index/notes?elite=false"
							class="title_tab">热门游记</a></li>
						<li class="title_item goods"><a href="#"
							data-beacon="elite_youji"
							data-url="https://travel.qunar.com/travelbook/api/index/notes?elite=true"
							class="title_tab">优质精华</a> <em class="i_hot"></em></li>
					</ul>
				</div>
				<dl class="b-dest-tab">
					<dt>目的地</dt>
					<dd>
						<a href="#" data-beacon="youji_all" class="cur" data-url="#">全部</a><a
							href="#" data-beacon="youji_hotplace" data-url="#">北京</a><a
							href="#" data-beacon="youji_hotplace" data-url="#">上海</a><a
							href="#" data-beacon="youji_hotplace" data-url="#">西安</a><a
							href="#" data-beacon="youji_hotplace" data-url="#">成都</a><a
							href="#" data-beacon="youji_hotplace" data-url="#">广州</a><a
							href="#" data-beacon="youji_hotplace" data-url="#">杭州</a><a
							href="#" data-beacon="youji_hotplace" data-url="#">南京</a><a
							href="#" data-beacon="youji_hotplace" data-url="#">苏州</a><a
							href="#" data-beacon="youji_hotplace" data-url="#">香港</a><a
							href="#" data-beacon="youji_hotplace" data-url="#">厦门</a>
					</dd>
					<div class="note_rt rt">
						<!-- 骆驼书 begin -->
						<div class="book">
							<div class="title clrfix">
								<h2 class="lf">骆驼书</h2>
								<a class="more rt" data-beacon="travellerguide_more" href="#">更多</a>
							</div>
							<div class="img_book">
								<a data-beacon="travellerguide_download" class="" href="#"><img
									width="200" height="282" class="ajaxloading" src="imgGL/骆驼书.png"
									data-url="img/骆驼书.png"></a>
							</div>
							<div class="detail clrfix">
								<img width="50" height="50" src="imgGL/骆驼书.png" class="imgf lf">
								<p class="clrfix">
									<span class="author_name lf">作者：</span><span class="author lf">祎玮(为食主义)</span>
								</p>
								<p class="cont">周祎玮，是新加坡知名中文美食博客“为食主义”的作者，她的读者都亲切地叫她“为食”。旅居新加坡十余年的她，白天是一位临床心理师，工作之余喜欢四处游走，在美食中体验生活的乐趣，...</p>
							</div>
							<a data-beacon="travellerguide_download" class="btn_down"
								href="#">免费下载</a>
						</div>
						<!-- 骆驼书 end -->
						<!-- 合作推广 begin -->
						<cite class="bdoalt" id="ad_cooperation" data-page="1"
							data-style="16" data-location="0" data-type="travelAD"></cite>
						<!-- 合作推广 end -->
						<div class="weixin">
							<div class="title">
								<h2>微信关注去哪儿攻略</h2>
							</div>
							<div class="detail clrfix">
								<img src="#" width="112" height="112" class="erCode lf">
								<p class="detailP">扫码关注骆驼君~ 能在第一时间收到最新活动的通知！避免错过福利喔~
									更有免费旅行等你来！</p>
							</div>
						</div>
				</dl>
				<!--攻略游记-->
				<ul class="note_ul">
					<li class="note_li"><div class="face">
							<a href="#"><img class="imgf" width="50" height="50"
								src="imgGL/头像01.png" title="天唱儿"></a>
						</div>
						<div class="note_tit title clrfix">
							<h2 class="lf">
								<a href="#" target="_blank" class="c33">南风拂面，同你一起去『香港』过情人节</a>
							</h2>
							<span class="flag jh lf"></span>
						</div>
						<div class="person">
							<a class="note_name" target="_blank" href="#">天唱儿</a><a href="#"
								data-beacon="traveler"><span class="user_name_icon"
								title="聪明旅行家"></span></a><span class="c99">2019-04-24&nbsp;出发</span><span
								class="c99"><span class="note_vline">|</span>共5天</span>
						</div>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">途径：</dt>
							<dd>香港</dd>
						</dl>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">行程：</dt>
							<dd class="place">尖沙咀</dd>
							<dd class="aline c99">></dd>
							<dd class="place">广东道</dd>
							<dd class="aline c99">></dd>
							<dd class="place">大澳</dd>
							<dd class="aline c99">></dd>
							<dd class="place">美孚地铁站</dd>
							<dd class="aline c99">></dd>
							<dd class="place">香港文化旅馆-翠雅山房(Hong Kong Heritage Lodge)</dd>
							<dd class="aline c99">></dd>
							<dd class="place">点点心点心专门店(佐敦店)</dd>
							<dd class="aline c99">></dd>
							<dd class="place">莎莎（弥敦88店）</dd>
							<dd class="aline c99">></dd>
							<dd class="place"></dd>
						</dl>
						<ul class="imgul">
							<li class="imgli"><a href="#" target="_blank"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/天唱儿01.png" alt="攻略图"></a></li>
							<li class="imgli"><a href="#" target="_blank"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/天唱儿02.png" alt="攻略图"></a></li>
							<li class="imgli"><a href="#" target="_blank"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/天唱儿03.png" alt="攻略图"></a></li>
							<li class="imgli"><a href="#" target="_blank"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/天唱儿04.png" alt="攻略图"></a></li>
						</ul></li>
					<li class="note_li"><div class="face">
							<a href="#"><img class="imgf" width="50" height="50"
								src="imgGL/头像02.png" title="大菊"></a>
						</div>
						<div class="note_tit title clrfix">
							<h2 class="lf">
								<a data-beacon="hot_youji_1_2" href="#" target="_blank"
									class="c33">夏季租车自驾2人6天长春、长白山、白山市、走错路的东北老林子深度游</a>
							</h2>
						</div>
						<div class="person">
							<a class="note_name" target="_blank" href="#">大菊</a><span
								class="c99">2019-04-18&nbsp;出发</span><span class="c99"><span
								class="note_vline">|</span>共6天</span>
						</div>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">途径：</dt>
							<dd>长白山池西Changbaishanchixi</dd>
							<dd class="aline c99">></dd>
							<dd>长白山池北Changbaishanchibei</dd>
							<dd class="aline c99">></dd>
							<dd>白山</dd>
							<dd class="aline c99">></dd>
							<dd>长春</dd>
						</dl>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">行程：</dt>
							<dd class="place">长白山西坡景区</dd>
							<dd class="aline c99">></dd>
							<dd class="place">长白山北坡景区</dd>
						</dl>
						<ul class="imgul">
							<li class="imgli"><a data-beacon="hot_youji_1_2" href="#"><img
									class="ajaxloading" width="200" height="150" src="imgGL/大菊01.png"
									data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_2" href="#"><img
									class="ajaxloading" width="200" height="150" src="imgGL/大菊02.png"
									data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_2" href="#"><img
									class="ajaxloading" width="200" height="150" src="imgGL/大菊03.png"
									data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_2" href="#"><img
									class="ajaxloading" width="200" height="150" src="imgGL/大菊04.png"
									data-original="#" alt="攻略图"></a></li>
						</ul></li>
					<li class="note_li"><div class="face">
							<a href="#"><img class="imgf" width="50" height="50"
								src="imgGL/头像03.png" title="习小远的视界"></a>
						</div>
						<div class="note_tit title clrfix">
							<h2 class="lf">
								<a data-beacon="hot_youji_1_3" href="#" target="_blank"
									class="c33">竹海温泉配三黑三白，游在天目湖的两日里</a>
							</h2>
						</div>
						<div class="person">
							<a class="note_name" href="#">习小远的视界</a><a href="#"
								data-beacon="traveler"><span class="user_name_icon"
								title="聪明旅行家"></span></a><span class="c99">2019-04-19&nbsp;出发</span><span
								class="c99"><span class="note_vline">|</span>共2天</span>
						</div>
						<ul class="imgul">
							<li class="imgli"><a data-beacon="hot_youji_1_3" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/习小远的视界01.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_3" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/习小远的视界02.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_3" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/习小远的视界03.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_3" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/习小远的视界04.png" data-original="#" alt="攻略图"></a></li>
						</ul></li>
					<li class="note_li"><div class="face">
							<a href="#"><img class="imgf" width="50" height="50"
								src="imgGL/头像04.png" title="旅游攻略投稿"></a>
						</div>
						<div class="note_tit title clrfix">
							<h2 class="lf">
								<a data-beacon="hot_youji_1_4" href="#" class="c33">越南,越美。一份超详细的越南攻略快快收藏</a>
							</h2>
						</div>
						<div class="person">
							<a class="note_name" href="#">旅游攻略投稿</a><span class="c99">2019-04-21&nbsp;出发</span><span
								class="c99"><span class="note_vline">|</span>共8天</span>
						</div>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">途径：</dt>
							<dd>越南(芽庄Nha Trang)</dd>
						</dl>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">行程：</dt>
							<dd class="place">20</dd>
							<dd class="aline c99">></dd>
							<dd class="place">汉潭岛</dd>
							<dd class="aline c99">></dd>
							<dd class="place">芽庄夜市</dd>
							<dd class="aline c99">></dd>
							<dd class="place">木岛</dd>
						</dl>
						<ul class="imgul">
							<li class="imgli"><a data-beacon="hot_youji_1_4" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/旅游攻略投稿01.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_4" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/旅游攻略投稿02.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_4" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/旅游攻略投稿03.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_4" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/旅游攻略投稿04.png" data-original="#" alt="攻略图"></a></li>
						</ul></li>
					<li class="note_li"><div class="face">
							<a href="#"><img class="imgf" width="50" height="50"
								src="imgGL/头像05.png" title="在河之北"></a>
						</div>
						<div class="note_tit title clrfix">
							<h2 class="lf">
								<a data-beacon="hot_youji_1_5" href="#" class="c33">我的三亚椰风之旅——72小时游、吃、住、购全攻略</a>
							</h2>
						</div>
						<div class="person">
							<a class="note_name" href="#">在河之北</a><span class="c99">2019-04-04&nbsp;出发</span><span
								class="c99"><span class="note_vline">|</span>共3天</span>
						</div>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">途径：</dt>
							<dd>三亚</dd>
							<dd class="aline c99">></dd>
							<dd>南非(开普敦Cape Town)</dd>
						</dl>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">行程：</dt>
							<dd class="place">日月石</dd>
							<dd class="aline c99">></dd>
							<dd class="place">天涯石</dd>
							<dd class="aline c99">></dd>
							<dd class="place">天涯海角</dd>
							<dd class="aline c99">></dd>
							<dd class="place">海角石</dd>
							<dd class="aline c99">></dd>
							<dd class="place">第一市场</dd>
							<dd class="aline c99">></dd>
							<dd class="place">抱罗粉</dd>
							<dd class="aline c99">></dd>
							<dd class="place">南山寺</dd>
							<dd class="aline c99">></dd>
							<dd class="place">南山海上观音</dd>
							<dd class="aline c99">></dd>
							<dd class="place">1号港湾城(大菠萝)</dd>
							<dd class="aline c99">></dd>
							<dd class="place">亚龙湾</dd>
							<dd class="aline c99">></dd>
							<dd class="place">蜈支洲岛海滨浴场</dd>
							<dd class="aline c99">></dd>
							<dd class="place">大东海</dd>
						</dl>
						<ul class="imgul">
							<li class="imgli"><a data-beacon="hot_youji_1_5" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/在河之北01.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_5" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/在河之北02.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_5" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/在河之北03.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_5" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/在河之北04.png" data-original="#" alt="攻略图"></a></li>
						</ul></li>
					<li class="note_li"><div class="face">
							<a href="#"><img class="imgf" width="50" height="50"
								src="imgGL/头像06.png" title="朱桀的行走笔记"></a>
						</div>
						<div class="note_tit title clrfix">
							<h2 class="lf">
								<a data-beacon="hot_youji_1_6" href="#" class="c33">#游记征集洛阳牡丹花正开，十三朝帝都兴废事还看今朝（附洛阳三天两夜游玩攻略）</a>
							</h2>
						</div>
						<div class="person">
							<a class="note_name" target="_blank" href="#">朱桀的行走笔记</a><a
								href="#" data-beacon="traveler"><span class="user_name_icon"
								title="聪明旅行家"></span></a><span class="c99">2019-04-10&nbsp;出发</span><span
								class="c99"><span class="note_vline">|</span>共4天</span>
						</div>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">途径：</dt>
							<dd>洛阳</dd>
							<dd class="aline c99">></dd>
							<dd>龙门石窟Longmenshiku</dd>
						</dl>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">行程：</dt>
							<dd class="place">洛阳博物馆</dd>
							<dd class="aline c99">></dd>
							<dd class="place">白马寺</dd>
							<dd class="aline c99">></dd>
							<dd class="place">洛邑古城</dd>
							<dd class="aline c99">></dd>
							<dd class="place">龙门石窟</dd>
							<dd class="aline c99">></dd>
							<dd class="place">中国国花园</dd>
							<dd class="aline c99">></dd>
							<dd class="place">洛阳牡丹城宾馆</dd>
							<dd class="aline c99">></dd>
							<dd class="place">白园</dd>
							<dd class="aline c99">></dd>
							<dd class="place">香山寺</dd>
							<dd class="aline c99">></dd>
							<dd class="place">天王殿</dd>
							<dd class="aline c99">></dd>
							<dd class="place">关林庙</dd>
							<dd class="aline c99">></dd>
							<dd class="place">接引殿</dd>
						</dl>
						<ul class="imgul">
							<li class="imgli"><a data-beacon="hot_youji_1_6" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/朱桀的行走笔记01.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_6" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/朱桀的行走笔记02.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_6" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/朱桀的行走笔记03.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_6" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/朱桀的行走笔记04.png" data-original="#" alt="攻略图"></a></li>
						</ul></li>
					<li class="note_li"><div class="face">
							<a target="_blank" href="#"><img class="imgf" width="50"
								height="50" src="imgGL/头像07.png" title="Salomeow二喵"></a>
						</div>
						<div class="note_tit title clrfix">
							<h2 class="lf">
								<a data-beacon="hot_youji_1_7" href="#" class="c33">万州
									在老街徐徐、飞瀑三千中，寻找江城味道</a>
							</h2>
						</div>
						<div class="person">
							<a class="note_name" target="_blank" href="#">Salomeow二喵</a><a
								href="#" data-beacon="traveler"><span class="user_name_icon"
								title="聪明旅行家"></span></a><span class="c99">2019-04-21&nbsp;出发</span><span
								class="c99"><span class="note_vline">|</span>共1天</span>
						</div>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">途径：</dt>
							<dd>万州</dd>
						</dl>
						<dl class="cont_dl c66 clrfix">
							<dt class="detit c99 lf">行程：</dt>
							<dd class="place">秦二哥格格</dd>
						</dl>
						<ul class="imgul">
							<li class="imgli"><a data-beacon="hot_youji_1_7" href=#><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/Salomeow二喵01.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_7" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/Salomeow二喵02.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_7" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/Salomeow二喵03.png" data-original="#" alt="攻略图"></a></li>
							<li class="imgli"><a data-beacon="hot_youji_1_7" href="#"><img
									class="ajaxloading" width="200" height="150"
									src="imgGL/Salomeow二喵04.png" data-original="#" alt="攻略图"></a></li>
						</ul></li>
				</ul>
			</div>
			<div class="note_rt rt">
				<!-- 骆驼书 begin -->
				<div class="book">
					<div class="title clrfix">
						<h2 class="lf">骆驼书</h2>
						<a class="more rt" data-beacon="travellerguide_more" href="#">更多</a>
					</div>
					<div class="img_book">
						<a data-beacon="travellerguide_download" class="" href="#"
							target="_blank"><img width="200" height="282"
							class="ajaxloading" src="imgGL/骆驼书.png" data-url="#"></a>
					</div>
					<div class="detail clrfix">
						<img width="50" height="50" src="imgGL/祎玮.png" class="imgf lf">
						<p class="clrfix">
							<span class="author_name lf">作者：</span><span class="author lf">祎玮(为食主义)</span>
						</p>
						<p class="cont">周祎玮，是新加坡知名中文美食博客“为食主义”的作者，她的读者都亲切地叫她“为食”。旅居新加坡十余年的她，白天是一位临床心理师，工作之余喜欢四处游走，在美食中体验生活的乐趣，...</p>
					</div>
					<a data-beacon="travellerguide_download" class="btn_down"
						target="_blank" href="#">免费下载</a>
				</div>
				<!-- 骆驼书 end -->
				<!-- 合作推广 begin -->
				<cite class="bdoalt" id="ad_cooperation" data-page="1"
					data-style="16" data-location="0" data-type="travelAD"></cite>
				<!-- 合作推广 end -->
				<div class="weixin">
					<div class="title">
						<h2>微信关注南小鸟攻略</h2>
					</div>
					<div class="detail clrfix">
						<img src="imgGL/微信.png" width="112" height="112"
							class="erCode lf">
						<p class="detailP">扫码关注骆驼君~ 能在第一时间收到最新活动的通知！避免错过福利喔~
							更有免费旅行等你来！</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--分类导航-->
	<div class="place_index bgff margin_top">
		<div class="wrap">
			<div class="title clrfix">
				<h2 class="lf">分类导航</h2>
			</div>
			<dl class="kind clrfix">
				<dt class="tit">
					<a href="#" class="rt more">更多</a> <span class="icon lf"></span>热门景点
				</dt>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="长白山天池"
						class="list_place">长白山天池</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="翠湖公园"
						class="list_place">翠湖公园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="《水舞源》演出"
						class="list_place">《水舞源》演出</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="滇池"
						class="list_place">滇池</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="金马碧鸡坊"
						class="list_place">金马碧鸡坊</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="南屏步行街"
						class="list_place">南屏步行街</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="云大会泽院仰止楼"
						class="list_place">云大会泽院仰止...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="石林"
						class="list_place">石林</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="海埂大坝"
						class="list_place">海埂大坝</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="龙门"
						class="list_place">龙门</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="章朗村布朗族山寨"
						class="list_place">章朗村布朗族山...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="云南陆军讲武堂旧址"
						class="list_place">云南陆军讲武堂...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="大观楼"
						class="list_place">大观楼</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="长白山北坡景区"
						class="list_place">长白山北坡景区</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="大戏台河风景区"
						class="list_place">大戏台河风景区</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="文化巷"
						class="list_place">文化巷</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="东西寺塔"
						class="list_place">东西寺塔</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="钱王街"
						class="list_place">钱王街</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="昆明动物园"
						class="list_place">昆明动物园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="金殿公园"
						class="list_place">金殿公园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="官渡古镇"
						class="list_place">官渡古镇</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="云南省博物馆"
						class="list_place">云南省博物馆</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="六鼎山文化旅游区"
						class="list_place">六鼎山文化旅游...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="轿子雪山"
						class="list_place">轿子雪山</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="云南野生动物园"
						class="list_place">云南野生动物园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="昆明植物园"
						class="list_place">昆明植物园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="黑龙潭公园"
						class="list_place">黑龙潭公园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="九乡"
						class="list_place">九乡</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="云南民族村"
						class="list_place">云南民族村</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="世界园艺博览园"
						class="list_place">世界园艺博览园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="云南民族博物馆"
						class="list_place">云南民族博物馆</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="昆明市博物馆"
						class="list_place">昆明市博物馆</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="昙华寺"
						class="list_place">昙华寺</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="筇竹寺"
						class="list_place">筇竹寺</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="太华寺"
						class="list_place">太华寺</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="昆明走廊"
						class="list_place">昆明走廊</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="云南民族大观园"
						class="list_place">云南民族大观园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="云南大学"
						class="list_place">云南大学</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="海埂公园"
						class="list_place">海埂公园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="圆通寺"
						class="list_place">圆通寺</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="云南省博物馆旧馆"
						class="list_place">云南省博物馆旧...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="谷底林海"
						class="list_place">谷底林海</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="云南师范大学"
						class="list_place">云南师范大学</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="西南联大纪念碑"
						class="list_place">西南联大纪念碑</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="聂耳故居(昆明)"
						class="list_place">聂耳故居(昆明)</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="云南省科技馆"
						class="list_place">云南省科技馆</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="青龙峡"
						class="list_place">青龙峡</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="莲花池公园"
						class="list_place">莲花池公园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="西华湿地公园"
						class="list_place">西华湿地公园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="东川红土地"
						class="list_place">东川红土地</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="官渡金刚塔"
						class="list_place">官渡金刚塔</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="近日楼"
						class="list_place">近日楼</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="西华园"
						class="list_place">西华园</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="帽儿山国家森林公园"
						class="list_place">帽儿山国家森林...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="魔界风景区"
						class="list_place">魔界风景区</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="长白山自然博物馆"
						class="list_place">长白山自然博物...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="中山路步行街"
						class="list_place">中山路步行街</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="延边州博物馆"
						class="list_place">延边州博物馆</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="哈尔滨冰雪大世界"
						class="list_place">哈尔滨冰雪大世...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_hotsight" title="满天星风景名胜区"
						class="list_place">满天星风景名胜...</a>
				</dd>
			</dl>
			<dl class="kind clrfix">
				<dt class="tit">
					<a href="#" class="rt more">更多</a> <span class="icon lf"></span>2019热门目的地推荐
				</dt>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="北京旅游攻略"
						class="list_place">北京旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="厦门旅游攻略"
						class="list_place">厦门旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="上海旅游攻略"
						class="list_place">上海旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="杭州旅游攻略"
						class="list_place">杭州旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="南京旅游攻略"
						class="list_place">南京旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="成都旅游攻略"
						class="list_place">成都旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="#" title="丽江旅游攻略" class="list_place">丽江旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="香港旅游攻略"
						class="list_place">香港旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="澳门旅游攻略"
						class="list_place">澳门旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="台北旅游攻略"
						class="list_place">台北旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="三亚旅游攻略"
						class="list_place">三亚旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="西安旅游攻略"
						class="list_place">西安旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="桂林旅游攻略"
						class="list_place">桂林旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="重庆旅游攻略"
						class="list_place">重庆旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="青岛旅游攻略"
						class="list_place">青岛旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="苏州旅游攻略"
						class="list_place">苏州旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="大连旅游攻略"
						class="list_place">大连旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="广州旅游攻略"
						class="list_place">广州旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="深圳旅游攻略"
						class="list_place">深圳旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="张家界旅游攻略"
						class="list_place">张家界旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="天津旅游攻略"
						class="list_place">天津旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="//travel.qunar.com/p-gj300484-taiguo"
						data-beacon="seo_place" title="泰国旅游攻略" class="list_place">泰国旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="//travel.qunar.com/p-gj300542-yingguo"
						data-beacon="seo_place" title="英国旅游攻略" class="list_place">英国旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="法国旅游攻略"
						class="list_place">法国旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="意大利旅游攻略"
						class="list_place">意大利旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="美国旅游攻略"
						class="list_place">美国旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="加拿大旅游攻略"
						class="list_place">加拿大旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="澳大利亚旅游攻略"
						class="list_place">澳大利亚旅游攻...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="埃及旅游攻略"
						class="list_place">埃及旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="韩国旅游攻略"
						class="list_place">韩国旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="日本旅游攻略"
						class="list_place">日本旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="马尔代夫旅游攻略"
						class="list_place">马尔代夫旅游攻...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="德国旅游攻略"
						class="list_place">德国旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="瑞士旅游攻略"
						class="list_place">瑞士旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="土耳其旅游攻略"
						class="list_place">土耳其旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="新西兰旅游攻略"
						class="list_place">新西兰旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="肯尼亚旅游攻略"
						class="list_place">肯尼亚旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="南非旅游攻略"
						class="list_place">南非旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="印度尼西亚旅游攻略"
						class="list_place">印度尼西亚旅游...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="菲律宾旅游攻略"
						class="list_place">菲律宾旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="越南旅游攻略"
						class="list_place">越南旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="柬埔寨旅游攻略"
						class="list_place">柬埔寨旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="马来西亚旅游攻略"
						class="list_place">马来西亚旅游攻...</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="西班牙旅游攻略"
						class="list_place">西班牙旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="希腊旅游攻略"
						class="list_place">希腊旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="巴西旅游攻略"
						class="list_place">巴西旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="尼泊尔旅游攻略"
						class="list_place">尼泊尔旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="印度旅游攻略"
						class="list_place">印度旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="荷兰旅游攻略"
						class="list_place">荷兰旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="奥地利旅游攻略"
						class="list_place">奥地利旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="俄罗斯旅游攻略"
						class="list_place">俄罗斯旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="挪威旅游攻略"
						class="list_place">挪威旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="芬兰旅游攻略"
						class="list_place">芬兰旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="丹麦旅游攻略"
						class="list_place">丹麦旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="乌克兰旅游攻略"
						class="list_place">乌克兰旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="比利时旅游攻略"
						class="list_place">比利时旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="捷克旅游攻略"
						class="list_place">捷克旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="葡萄牙旅游攻略"
						class="list_place">葡萄牙旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="瑞典旅游攻略"
						class="list_place">瑞典旅游攻略</a>
				</dd>
				<dd class="list_place">
					<a href="#" data-beacon="seo_place" title="冰岛旅游攻略"
						class="list_place">冰岛旅游攻略</a>
				</dd>
			</dl>
		</div>
	</div>
</body>
</html>
