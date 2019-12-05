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
<title>酒店预订</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/css3.css" rel="stylesheet" type="text/css" />
<link href="css/css2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/common.css">
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/hotel.js"></script>
</head>
<body>
<!--引入头部-->
    <%@include file="header.jsp"%>
    
	<!--推荐酒店start-->
	<div class="recom_hotel">
		<div class="wrap" >
			<div class="recom_hotel_box" >
				<div class="hotel_title hotel_title_01" >
					<p class="title fl goPositionSys" id="455" >
						<i class="hotel_icon icon_hotel01" ></i>限时抢购
					</p>
					<div class="fl" style="line-height: 36px; color: #666;" >
						<!--精选酒店精选酒店精选酒店精选酒店-->
					</div>
				</div>
				<ul class="recom_pro_box" >
					<li><a class="pro"
						title="【含五一专场￥699限量抢】惠州惠东双月湾檀悦豪生温泉度假酒店/自由行套票" target="_blank">
							<div class="pro_img">
								<img src="img/限时抢购01.png">
							</div>
							<h2>【含五一专场￥699限量抢】惠州惠东双月湾檀悦豪生温泉度假酒店/自由行套票</h2>
							<h3>跨五一假期，4月30日独家专场套票：含双人早餐+双人BBQ自助海鲜晚餐+私家沙滩+户外无边泳池，入住公寓双床房￥699/套起限量抢购，入住酒店海景双床房(带私家泡池)￥899/套起！</h3>
							<div class="price_button">
								<span class="price">抢购价￥<strong class="font20">729</strong></span>
								<span class="button">马上抢购</span>
							</div>
					</a></li>
					<li><a class="pro" title="【含五一特价】广州增城三英温泉度假酒店/自由行套票"
						target="_blank">
							<div class="pro_img">
								<img src="img/限时抢购02.png">
							</div>
							<h2>【含五一特价】广州增城三英温泉度假酒店/自由行套票</h2>
							<h3>5月4日出发，入住泉韵合院，含双早+双人无限次温泉，特惠秒杀低至599元/间！加含双人自助晚餐，低至699元/间！</h3>
							<div class="price_button">
								<span class="price">抢购价￥<strong class="font20">599</strong></span>
								<span class="button">马上抢购</span>
							</div>
					</a></li>
					<li><a class="pro"
						title="【抢购￥1188=2间】清远佛冈勤天熹乐谷温泉度假村酒店/自由行套票" target="_blank">
							<div class="pro_img">
								<img src="img/限时抢购03.png">
							</div>
							<h2>【抢购￥1188=2间】清远佛冈勤天熹乐谷温泉度假村酒店/自由行套票</h2>
							<h3>4月指定日期入住，限时抢购，￥1188=2间！含双早+无限次凤凰温泉！</h3>
							<div class="price_button">
								<span class="price">抢购价￥<strong class="font20">638</strong></span>
								<span class="button">马上抢购</span>
							</div>
					</a></li>
					<li style="position: absolute; top:150px; left: 1050px; z-index: 2"><a class="pro"
						title="【含五一特价￥399起】惠州龙门尚天然花海温泉小镇酒店/自由行套票" target="_blank"
						style="margin-right: 0;">
							<div class="pro_img">
								<img src="img/限时抢购04.png">
							</div>
							<h2>【含五一特价￥399起】惠州龙门尚天然花海温泉小镇酒店/自由行套票</h2>
							<h3>五一限时特惠，低至¥399/间，含双人早餐+无限次温泉+自助晚餐，赠送农民画博物馆门票2张！</h3>
							<div class="price_button">
								<span class="price">抢购价￥<strong class="font20">399</strong></span>
								<span class="button">马上抢购</span>
							</div>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--推荐酒店end-->
	<!--热门酒店start-->
	<div class="hot_hotel hot_hotel0">
		<div class="wrap hot_hotel_box">
			<div class="title">温泉酒店</div>
			<ul class="tab tab0">
				<li class="hot_hotel_li active" id="y1">粤东温泉</li>
				<li class="hot_hotel_li " id="y2">广州周边温泉</li>
				<li class="hot_hotel_li " id="y3">粤北温泉</li>
				<li class="hot_hotel_li " id="y4">粤西温泉</li>
			</ul>
			<div class="hotellist"  id="a1">
				<ul>
					<li><a>
							<div class="label_hs">
								<img src="img/温泉酒店01.png">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州龙门富力希尔顿度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>580</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/温泉酒店02.png">
							</div>
							<div class="desc">
								<dl>
									<dt>【含五一特价￥399起】惠州龙门尚天然花海温泉小镇酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>399</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/温泉酒店03.png">
								<div class="label_hs_p">
									<span>每间立减￥100</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>【￥599特价】惠州龙门南昆山温德姆温泉酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>699</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/温泉酒店04.png">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州龙门南昆山温泉大观园酒店/别墅自由行套票</dt>
									<dd class="price">
										<span>¥<em>508</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/温泉酒店05.png">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州龙门南昆山云顶温泉度假村酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>638</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/温泉酒店06.png">
							</div>
							<div class="desc">
								<dl>
									<dt>【含五一专场】惠州龙门地派温泉度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>658</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li class="tu_s"><a >
							<div class="label_hs">
								<img src="img/温泉酒店07.png">
								<div class="label_hs_p">
									<span>每间立减￥100</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>【含五一专场￥699限量抢】惠州惠东双月湾檀悦豪生温泉度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>729</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li class="tu_s"><a >
							<div class="label_hs">
								<img src="img/温泉酒店08.png">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州龙门南昆山居温泉度假村酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>729</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li class="tu_s"><a >
							<div class="label_hs">
								<img src="img/温泉酒店09.png">
							</div>
							<div class="desc">
								<dl>
									<dt>河源巴伐利亚美思皇家度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>458</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a  class="gen" >更多产品</a>
				</div>
			</div>
			<div class="hotellist" style="display: none;" id="a2">
				<ul>
					<li><a >
							<div class="label_hs">
								<img src="img/长隆酒店01.png">
							</div>
							<div class="desc">
								<dl>
									<dt>广州从化碧泉空中温泉大酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>688</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/长隆酒店02.png">
								<div class="label_hs_p">
									<span>每间立减￥200</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>【含五一特价】广州增城三英温泉度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>599</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/长隆酒店03.png">
								<div class="label_hs_p">
									<span>每间立减￥100</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>【专场特惠 立减100元】广州增城碧桂园金叶子温泉度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>758</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/长隆酒店04.png">
							</div>
							<div class="desc">
								<dl>
									<dt>广州增城香江健康山谷（原锦绣香江酒店）/自由行套票</dt>
									<dd class="price">
										<span>¥<em>568</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/长隆酒店05.png">
							</div>
							<div class="desc">
								<dl>
									<dt>广州从化逸泉国际大酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>530</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/长隆酒店06.png">
							</div>
							<div class="desc">
								<dl>
									<dt>广州从化圣托利温泉庄园酒店</dt>
									<dd class="price">
										<span>¥<em>758</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/gz花都.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>广州花都美林湖温泉大酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>798</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/gz卓思道.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>广州从化卓思道温泉度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>988</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/gz格诗.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>广州从化崴格诗温泉庄园/自由行套票</dt>
									<dd class="price">
										<span>¥<em>588</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a >更多产品</a>
				</div>
			</div>
			<div class="hotellist" style="display: none; color: black;" id="a3">
				<ul>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/b1.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>【抢购￥1188=2间】清远佛冈勤天熹乐谷温泉度假村酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>638</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/b2.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>清远佛冈聚龙湾天然温泉度假村酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>508</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/b3.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>清远万科白天鹅温泉酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>668</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/b4.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>清远英德宝晶宫天鹅湖度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>658</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/b5.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>韶关乳源丽宫国际温泉酒店/套票</dt>
									<dd class="price">
										<span>¥<em>518</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/b6.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>清远佛冈森波拉温泉度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>508</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/b7.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>清远美林湖美胜酒店式公寓/自由行套票</dt>
									<dd class="price">
										<span>¥<em>499</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/b8.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>湖南郴州莽山森林温泉酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>688</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/b9.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>韶关经律论国际酒店自由行套票</dt>
									<dd class="price">
										<span>¥<em>568</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a href="#">更多产品</a>
				</div>
			</div>
			<div class="hotellist" style="display: none;" id="a4">
				<ul>
					<li><a >
							<div class="label_hs">
								<img src="img/x1.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>江门台山颐和温泉城大酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>680</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/长隆酒店01.png">
							</div>
							<div class="desc">
								<dl>
									<dt>江门恩平山泉湾温泉酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>500</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/长隆酒店02.png">
							</div>
							<div class="desc">
								<dl>
									<dt>江门新会古兜温泉小镇酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>528</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/长隆酒店03.png">
							</div>
							<div class="desc">
								<dl>
									<dt>江门台山康桥温泉度假村酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>490</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/长隆酒店04.png">
							</div>
							<div class="desc">
								<dl>
									<dt>云浮新兴金水台温泉度假村酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>408</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/长隆酒店05.png">
							</div>
							<div class="desc">
								<dl>
									<dt>珠海海泉湾维景国际大酒店/套票</dt>
									<dd class="price">
										<span>¥<em>799</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/长隆酒店06.png">
							</div>
							<div class="desc">
								<dl>
									<dt>珠海御海湾酒店/自由行套票【DS】</dt>
									<dd class="price">
										<span>¥<em>698</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/x-2.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>江门恩平锦江温泉度假村酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>389</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/x-1.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>【日式温泉】珠海御温泉度假村酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>1368</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a>更多产品</a>
				</div>
			</div>
		</div>
	</div>
	<div class="hot_hotel hot_hotel1">
		<div class="wrap hot_hotel_box">
			<div class="title">长隆酒店</div>
			<ul class="tab tab1">
				<li class="hot_hotel_li active" id="z1">珠海长隆</li>
				<li class="hot_hotel_li " id="z2">广州长隆</li>
			</ul>
			<div class="hotellist" id="zz1">
				<ul>
					<li><a>
							<div class="label_hs">
								<img src="img/长隆酒店01.png">
								<div class="label_hs_p">
									<span>提前7天每间优惠￥20</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>【超级秒杀 长隆门票+酒店】珠海长隆企鹅酒店自由行套票</dt>
									<dd class="price">
										<span>¥<em>948</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/长隆酒店02.png">
								<div class="label_hs_p">
									<span>提前7天每间优惠￥20</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>【超级秒杀 长隆门票+酒店】珠海长隆马戏酒店自由行套票</dt>
									<dd class="price">
										<span>¥<em>769</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/长隆酒店03.png">
								<div class="label_hs_p">
									<span>提前7天每间优惠￥20</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>【超级秒杀 长隆门票+酒店】珠海长隆横琴湾酒店自由行套票</dt>
									<dd class="price">
										<span>¥<em>1039</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/长隆酒店04.png">
								<div class="label_hs_p">
									<span>提前7天每间优惠￥20</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>珠海长隆迎海公寓自由行套票【酒店+长隆门票】</dt>
									<dd class="price">
										<span>¥<em>409</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/长隆酒店05.png">
							</div>
							<div class="desc">
								<dl>
									<dt>珠海横琴深湾车酷COOL精品客栈/自由行套票</dt>
									<dd class="price">
										<span>¥<em>248</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/长隆酒店06.png">
							</div>
							<div class="desc">
								<dl>
									<dt>珠海诚丰广场希尔顿欢朋酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>519</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a>更多产品</a>
				</div>
			</div>
			<div class="hotellist" style="display: none;" id="zz2">
				<ul>
					<li><a>
							<div class="label_hs">
								<img src="img/cl1.jpg">
								<div class="label_hs_p">
									<span>提前7天每间优惠￥20</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>【超级秒杀 长隆门票+酒店】广州长隆酒店自由行套票</dt>
									<dd class="price">
										<span>¥<em>859</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/cl2.jpg">
								<div class="label_hs_p">
									<span>提前7天每间优惠￥20</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>【超级秒杀 长隆门票+酒店】广州长隆香江酒店（长隆野生动物世界店）双人/三人套餐</dt>
									<dd class="price">
										<span>¥<em>499</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/cl3.jpg">
								<div class="label_hs_p">
									<span>提前7天每间优惠￥20</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>【超级秒杀 长隆门票+酒店】广州长隆熊猫酒店自由行套票</dt>
									<dd class="price">
										<span>¥<em>769</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/cl4.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>广州维福顿主题公寓酒店（汉溪长隆店）/自由行套票</dt>
									<dd class="price">
										<span>¥<em>279</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="/hotel/group?group_id=1876" target="_blank">
							<div class="label_hs">
								<img src="img/cl5.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>广州亚特兰酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>488</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/cl6.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>广州丽枫酒店(广州长隆公园大石地铁站店)</dt>
									<dd class="price">
										<span>¥<em>248</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a >更多产品</a>
				</div>
			</div>
		</div>
	</div>
	<div class="hot_hotel hot_hotel2">
		<div class="wrap hot_hotel_box">
			<div class="title">聚会别墅</div>
			<ul class="tab tab2">
			</ul>
			<div class="hotellist">
				<ul>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/聚会别墅01.png">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州巽寮富力湾度假别墅/套票</dt>
									<dd class="price">
										<span>¥<em>728</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/聚会别墅02.png">
							</div>
							<div class="desc">
								<dl>
									<dt>清远佛冈聚龙湾天然温泉度假别墅/自由行套票</dt>
									<dd class="price">
										<span>¥<em>1668</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/聚会别墅03.png">
							</div>
							<div class="desc">
								<dl>
									<dt>江门恩平山泉湾温泉度假别墅/自由行套票</dt>
									<dd class="price">
										<span>¥<em>1178</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/聚会别墅04.png">
							</div>
							<div class="desc">
								<dl>
									<dt>清远佛冈碧桂园清泉城度假别墅/自由行套票</dt>
									<dd class="price">
										<span>¥<em>880</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/聚会别墅05.png">
							</div>
							<div class="desc">
								<dl>
									<dt>佛山高明美的鹭湖森林度假别墅/自由行套票</dt>
									<dd class="price">
										<span>¥<em>798</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
			</div>
			<div class="hotellist" style="display: none;">
				<ul>
					<li><a>
							<div class="label_hs">
								<img src="#">
							</div>
							<div class="desc">
								<dl>
									<dt>江门恩平恒大泉都伊斯登酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>298</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="#">
							</div>
							<div class="desc">
								<dl>
									<dt>江门恩平锦江温泉度假村酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>389</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="#">
							</div>
							<div class="desc">
								<dl>
									<dt>清远佛冈勤天熹乐谷温泉度假酒店别墅/自由行套票</dt>
									<dd class="price">
										<span>¥<em>2398</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="#">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州南昆山富力养生谷温泉度假别墅自由行套票</dt>
									<dd class="price">
										<span>¥<em>860</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="#">
							</div>
							<div class="desc">
								<dl>
									<dt>河源巴伐利亚庄园度假别墅/自由行套票</dt>
									<dd class="price">
										<span>¥<em>1548</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="#">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州龙门南昆山居温泉度假村别墅/自由行套票</dt>
									<dd class="price">
										<span>¥<em>2888</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="hot_hotel hot_hotel3">
		<div class="wrap hot_hotel_box">
			<div class="title">度假酒店</div>
			<ul class="tab tab3">
				<li class="hot_hotel_li active" id="p1">生态度假</li>
				<li class="hot_hotel_li " id="p2">主题酒店</li>
			</ul>
			<div class="hotellist" id="pp1">
				<ul>
					<li><a >
							<div class="label_hs">
								<img src="img/度假酒店01.png">
							</div>
							<div class="desc">
								<dl>
									<dt>佛山美的鹭湖岭南花园酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>548</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/度假酒店02.png">
							</div>
							<div class="desc">
								<dl>
									<dt>广州花都木莲庄酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>738</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/度假酒店03.png">
							</div>
							<div class="desc">
								<dl>
									<dt>清远连州龙潭客栈/自由行套票</dt>
									<dd class="price">
										<span>¥<em>198</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/度假酒店04.png">
							</div>
							<div class="desc">
								<dl>
									<dt>清远金子山森林雪谷壮瑶度假村自由行套票</dt>
									<dd class="price">
										<span>¥<em>238</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a>
							<div class="label_hs">
								<img src="img/度假酒店05.png">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州龙门南昆山十字水生态度假村/酒店+无限次特色峭壁温泉门票2天1晚自由行套票</dt>
									<dd class="price">
										<span>¥<em>1528</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/度假酒店06.png">
							</div>
							<div class="desc">
								<dl>
									<dt>清远狮子湖喜来登度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>748</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li  class="genBB"><a>
							<div class="label_hs">
								<img src="img/度假酒店07.png">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州白鹭湖雅居乐喜来登度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>788</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li class="genBB"><a href="#">
							<div class="label_hs">
								<img src="img/度假酒店08.png">
							</div>
							<div class="desc">
								<dl>
									<dt>广州增城恒大酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>518</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a id="genB">更多产品</a>
				</div>
			</div>
			<div class="hotellist" style="display: none;" id="pp2">
				<ul>
					<li><a >
							<div class="label_hs">
								<img src="img/dj1.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>深圳东部华侨城咖酷旅馆/自由行套票</dt>
									<dd class="price">
										<span>¥<em>438</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a >
							<div class="label_hs">
								<img src="img/dj2.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>深圳东部华侨城瀑布酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>698</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/dj3.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>深圳东部华侨城黑森林酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>728</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/dj4.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>清远佛冈森波拉温泉度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>508</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/dj5.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>广州花都九龙湖公主酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>808</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/dj6.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>佛山国艺度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>568</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a href="#">更多产品</a>
				</div>
			</div>
		</div>
	</div>
	<div class="hot_hotel hot_hotel4">
		<div class="wrap hot_hotel_box">
			<div class="title">海滩酒店</div>
			<ul class="tab tab4">
				<li class="hot_hotel_li active" id="u1">闸坡</li>
				<li class="hot_hotel_li " id="u2">巽寮湾/双月湾</li>
				<li class="hot_hotel_li " id="u3">更多海滨酒店</li>
			</ul>
			<div class="hotellist" id="uu1">
				<ul>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/海滩酒店01.png">
							</div>
							<div class="desc">
								<dl>
									<dt>【十里银滩】阳江闸坡海韵戴斯度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>468</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/海滩酒店02.png">
							</div>
							<div class="desc">
								<dl>
									<dt>阳江海陵岛闸坡北洛秘境度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>468</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/海滩酒店03.png">
							</div>
							<div class="desc">
								<dl>
									<dt>【十里银滩】阳江闸坡海陵岛保利N+酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>328</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/海滩酒店04.png">
							</div>
							<div class="desc">
								<dl>
									<dt>【十里银滩】阳江闸坡海陵岛维福顿公寓（保利海上林语）/自由行套票</dt>
									<dd class="price">
										<span>¥<em>108</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/海滩酒店05.png">
							</div>
							<div class="desc">
								<dl>
									<dt>阳江闸坡伊斯登度假公寓/自由行套票（温馨厅房风）</dt>
									<dd class="price">
										<span>¥<em>138</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/海滩酒店06.png">
							</div>
							<div class="desc">
								<dl>
									<dt>【十里银滩】阳江海陵岛闸坡保利皇冠假日酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>718</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a href="#">更多产品</a>
				</div>
			</div>
			<div class="hotellist" style="display: none;" id="uu2">
				<ul>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/htw1.jpg">
								<div class="label_hs_p">
									<span>每间立减￥100</span> <i></i>
								</div>
							</div>
							<div class="desc">
								<dl>
									<dt>【含五一专场￥699限量抢】惠州惠东双月湾檀悦豪生温泉度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>729</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/htw2.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州惠东巽寮湾爱度度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>228</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/htw3.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州双月湾檀悦都喜天丽度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>708</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/htw4.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州万科双月湾微豪思湾舍酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>299</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/htw5.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州巽寮湾凤凰山水海公园海景度假酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>228</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/htw6.png">
							</div>
							<div class="desc">
								<dl>
									<dt>惠州惠东巽寮湾山海兰亭假日酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>168</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a href="#">更多产品</a>
				</div>
			</div>
			<div class="hotellist" style="display: none;" id="uu3">
				<ul>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/htb1.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>汕头南澳岛格兰云天大酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>408</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/htb2.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>江门台山那琴半岛地质海洋公园酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>538</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/htb3.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>江门台山下川岛星海湾酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>170</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/htb4.png">
							</div>
							<div class="desc">
								<dl>
									<dt>茂名浪漫海岸温德姆酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>568</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/htb5.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>茂名放鸡岛海洋度假公园酒店/自由行套票</dt>
									<dd class="price">
										<span>¥<em>338</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a
						href="//www.jinmalvyou.com/hotel/search/view_type/1/keyword/%E9%85%92%E5%BA%97"
						target="_blank">更多产品</a>
				</div>
			</div>
		</div>
	</div>
	<div class="hot_hotel hot_hotel5">
		<div class="wrap hot_hotel_box">
			<div class="title">港澳酒店</div>
			<ul class="tab tab5">
				<li class="hot_hotel_li active" id="t1">香港酒店</li>
				<li class="hot_hotel_li " id="t2">澳门酒店</li>
			</ul>
			<div class="hotellist" id="tt1">
				<ul>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/港澳酒店01.png">
							</div>
							<div class="desc">
								<dl>
									<dt>香港如心海景酒店暨会议中心</dt>
									<dd class="price">
										<span>¥<em>880</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/港澳酒店02.png">
							</div>
							<div class="desc">
								<dl>
									<dt>香港如心南湾海景酒店</dt>
									<dd class="price">
										<span>¥<em>730</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/港澳酒店03.png">
							</div>
							<div class="desc">
								<dl>
									<dt>香港华大盛品酒店</dt>
									<dd class="price">
										<span>¥<em>590</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/港澳酒店04.png">
							</div>
							<div class="desc">
								<dl>
									<dt>香港迪士尼探索家度假酒店【DS】</dt>
									<dd class="price">
										<span>¥<em>2658</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/港澳酒店05.png">
							</div>
							<div class="desc">
								<dl>
									<dt>香港美的假日宾馆</dt>
									<dd class="price">
										<span>¥<em>360</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#" >
							<div class="label_hs">
								<img src="img/港澳酒店06.png">
							</div>
							<div class="desc">
								<dl>
									<dt>香港尖沙咀华丽酒店</dt>
									<dd class="price">
										<span>¥<em>660</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li class="genAA"><a href="#" >
							<div class="label_hs">
								<img src="img/港澳酒店07.png">
							</div>
							<div class="desc">
								<dl>
									<dt>香港广州宾馆</dt>
									<dd class="price">
										<span>¥<em>320</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li class="genAA"><a href="#" >
							<div class="label_hs">
								<img src="img/港澳酒店08.png">
							</div>
							<div class="desc">
								<dl>
									<dt>香港海洋公园万豪酒店</dt>
									<dd class="price">
										<span>¥<em>1150</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
				<div class="more">
					<a id="genA">更多产品</a>
				</div>
			</div>
			<div class="hotellist" style="display: none;" id="tt2">
				<ul>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/am1.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>澳门巴黎人酒店</dt>
									<dd class="price">
										<span>¥<em>988</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/am2.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>澳门喜来登金沙城中心酒店</dt>
									<dd class="price">
										<span>¥<em>888</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/am3.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>澳门富豪酒店</dt>
									<dd class="price">
										<span>¥<em>750</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/am4.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>澳门银河酒店</dt>
									<dd class="price">
										<span>¥<em>1209</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
					<li><a href="#">
							<div class="label_hs">
								<img src="img/am5.jpg">
							</div>
							<div class="desc">
								<dl>
									<dt>澳门美狮美高梅酒店</dt>
									<dd class="price">
										<span>¥<em>1238</em></span>起
									</dd>
								</dl>
							</div>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	</div>
	<script src="/Public/theme/default/home/js/hotel.js?v=11318"
		type="text/javascript"></script>
	<script src="/Public/js/jquery-1.9.1.min.js"></script>
	<script src="/Public/js/swiper.min.js"></script>
	<script type="text/javascript" src="/Public/js/layer/layer.js"></script>
	<script src="/Public/js/Kalendar-plugin/Kalendar-plugin.js"></script>
	<div class="bottom">
		<div class="bottom_box">
			<!--why_select start-->
			<div class="why_select">
				<h1 class="fl title">为什么选择官网?</h1>
				<dl>
					<dt class="fl">
						<i class="icon i_whyselect01"></i>
					</dt>
					<dd>
						<h1>产品齐全</h1>
						<h2>产品全自主选，随心买</h2>
					</dd>
				</dl>
				<dl>
					<dt class="fl">
						<i class="icon i_whyselect02"></i>
					</dt>
					<dd>
						<h1>便利快捷</h1>
						<h2>24小时不打烊，随时买</h2>
					</dd>
				</dl>
				<dl>
					<dt class="fl">
						<i class="icon  i_whyselect03"></i>
					</dt>
					<dd>
						<h1>安全支付</h1>
						<h2>知名支付工具，放心买</h2>
					</dd>
				</dl>
				<dl>
					<dt class="fl">
						<i class="icon  i_whyselect04"></i>
					</dt>
					<dd style="margin-right:0px;">
						<h1>贴心服务</h1>
						<h2>客服全年无休，安心买</h2>
					</dd>
				</dl>
			</div>
			<div class="contact_us">
				<div class="contact_link fl">
					<dl>
						<dt>帮助中心</dt>
						<dd>
							<a href="#">购物支付</a>
						</dd>
						<dd>
							<a href="#">合同保险</a>
						</dd>
						<dd>
							<a href="#">签证护照</a>
						</dd>
						<dd>
							<a href="#">常见问题</a>
						</dd>
						<dd>
							<a href="#">意见反馈</a>
						</dd>
					</dl>
					<dl>
						<a href="#" style="color: #c2c2c2;"><dt>关于我们</dt></a>
						<dd>
							<a href="#"> 诚聘英才</a>
						</dd>
						<dd>
							<a href="#">业务合作</a>
						</dd>
						<dd>
							<a href="#">历史荣誉</a>
						</dd>
						<dd>
							<a href="#">营业网点</a>
						</dd>
					</dl>
					<dl>
						<dt>联系我们</dt>
						<dd>客服热线：020-83192777</dd>
						<dd>质监热线：020-83701757</dd>
						<dd>公司汇款账号：4405 0142 0208 0000 0077</dd>
						<dd>开户名称：广州市南小鸟有限公司</dd>
						<dd>开户行：中国建设银行 广州惠福西路支行</dd>
					</dl>
				</div>
				<div class="contact_code fr">
					<h1>
						<span>关注我们：</span> <a href="#" class="mr10" title="官方微博"><img
							src="img/官方微博.png" /></a> <a href="#" title="天猫旗舰店"><img
							src="img/天猫旗舰店.png" /></a>
					</h1>
					<div class="two_code fl">
						<img src="img/App.png" />
						<p>APP预订更优惠</p>
					</div>
					<div class="two_code fl">
						<img src="img/czt微信.png" />
						<p>关注微信</p>
					</div>
				</div>
			</div>
			<!--contact_us end-->
			<div style="padding:10px 0; text-align: center;">
				<p>广州市南小鸟有限公司版权所有</p>
				<p>
					经营许可证号：L-GD-CJ00201 | ICP号：<a href="#" style="color: #C2C2C2;">粤ICP备11082266号-1
					</a>
				</p>
			</div>
			<div class="safe_info_common" id="safe_info_common"
				style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index: 99999; display: none;">
				<div class="safe_img_common" style="position: relative;">
					<img src="#" class="info"
						style="width: 600px; height: 580px; position: absolute; left: 50%; top: 50%; margin-top: 100px; margin-left: -300px;">
					<img src="#" class="safe_close_c"
						style="position: absolute; top: 90px; left: 50%; margin-left: 280px; cursor: pointer;">
				</div>
			</div>
			<div class="safe_bg"
				style="background: rgba(0, 0, 0, 0.5); width: 100%; height: 100%; display: block; z-index: 999; position: fixed; top: 0; left: 0; display: none;"></div>
		</div>

	</div>

</body>
</html>
