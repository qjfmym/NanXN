<%--
  Created by IntelliJ IDEA.
  User: Jiayutao
  Date: 2018/6/20
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
    <title>微信支付页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/webbase.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/pages-weixinpay.css"/>
    <script src="${pageContext.request.contextPath}/js/qrious.min.js"></script>

</head>

<body ng-app="pinyougou" ng-controller="payController" ng-init="createNative()">
<!--head-->
<div class="top">
    <div class="py-container">
        <div class="shortcut">
            <ul class="fl">
                <li class="f-item">南小鸟欢迎您！</li>
                <li class="f-item"><a href="#"><%-- ${user.username} --%> admin</a></li>
            </ul>
            <ul class="fr">
               <li class="f-item space"></li>
                <li class="f-item">
                <a href="#">我的订单</a>
                </li>
                <li class="f-item space"></li>
                <li class="f-item">旅游网会员</li>
                <li class="f-item space"></li>
                <li class="f-item">企业组团</li>
                <li class="f-item space"></li>
                <li class="f-item">关注播客</li>
                <li class="f-item space"></li>
                <li class="f-item">客户服务</li>
                <li class="f-item space"></li>
                <li class="f-item">网站导航</li>
            </ul>
        </div>
    </div>
</div>

<div class="cart py-container">
    <!--logoArea-->
    <div class="logoArea">
        <div style="padding-left: 10px">
        <a href="${pageContext.request.contextPath}/index.jsp">
            <img src="${pageContext.request.contextPath}/img/nxl.gif" style="width: 13%;height: 22%">
            </a>
            <span><font size="4">收银台</font></span>
        </div>
    </div>
    <!--主内容-->
    <div class="checkout py-container  pay">
        <div class="checkout-tit">
            <h4 class="fl tit-txt"><span class="success-icon"></span><span
                    class="success-info">订单提交成功，请您及时在一分钟内付款！订单号:${orderid}</span>
            </h4>
            <span class="fr"><em class="sui-lead">应付金额：</em><em class="orange money">￥${route.price} </em>元</span>
            <div class="clearfix"></div>
        </div>
        <div class="checkout-steps">
            <div class="fl weixin">微信支付</div>
            <div>
                <p class="red"></p>
                <div class="fl code">
                    <%--二维码生成--%>
                    <img id="qrcode"> <br>
                    <div>
                        <img src="${pageContext.request.contextPath}/img/pay.png">
                    </div>
                </div>

                <div style="padding-left: 500px">
                    <img src="${pageContext.request.contextPath}/img/phone-bg.png">
                </div>

            </div>
            <div class="clearfix"></div>
            <p></p>
        </div>
    </div>

</div>
<!-- 底部栏位 -->
<!--页面底部-->
<div class="clearfix footer">
    <div class="py-container">
        <div class="footlink">

            <div class="Mod-service">
                <img src="${pageContext.request.contextPath}/img/footer.jpg">
            </div>

            <div class="clearfix Mod-list">
                <div class="yui3-g">
                    <div class="yui3-u-1-6">
                        <h4>购物指南</h4>
                        <ul class="unstyled">
                            <li>购物流程</li>
                            <li>会员介绍</li>
                            <li>生活旅行/团购</li>
                            <li>常见问题</li>
                            <li>购物指南</li>
                        </ul>

                    </div>
                    <div class="yui3-u-1-6">
                        <h4>配送方式</h4>
                        <ul class="unstyled">
                            <li>上门自提</li>
                            <li>211限时达</li>
                            <li>配送服务查询</li>
                            <li>配送费收取标准</li>
                            <li>海外配送</li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>支付方式</h4>
                        <ul class="unstyled">
                            <li>货到付款</li>
                            <li>在线支付</li>
                            <li>分期付款</li>
                            <li>邮局汇款</li>
                            <li>公司转账</li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>售后服务</h4>
                        <ul class="unstyled">
                            <li>售后政策</li>
                            <li>价格保护</li>
                            <li>退款说明</li>
                            <li>返修/退换货</li>
                            <li>取消订单</li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>特色服务</h4>
                        <ul class="unstyled">
                            <li>夺宝岛</li>
                            <li>DIY装机</li>
                            <li>延保服务</li>
                            <li>品优购E卡</li>
                            <li>品优购通信</li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>帮助中心</h4>
                        <img src="${pageContext.request.contextPath}/img/czt微信.png" width="90px" height="90px">
                    </div>
                </div>
            </div>
            <div class="Mod-copyright">
                <ul class="helpLink">
                    <li>关于我们<span class="space"></span></li>
                    <li>联系我们<span class="space"></span></li>
                    <li>关于我们<span class="space"></span></li>
                    <li>商家入驻<span class="space"></span></li>
                    <li>营销中心<span class="space"></span></li>
                    <li>友情链接<span class="space"></span></li>
                    <li>关于我们<span class="space"></span></li>
                    <li>营销中心<span class="space"></span></li>
                    <li>友情链接<span class="space"></span></li>

                    <li>关于我们</li>
                </ul>
                <p>地址：广东省佛山市禅城区佛山大道北 邮编：888888 电话：400-4200-4000 传真：010-18735100</p>
                <p>粤ICU备08001421号粤公网安备110108007702</p>
            </div>
        </div>
    </div>
</div>
<!--页面底部END-->

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript">
    //生成二维码函数
    function createQrcode() {
        console.log("支付二维码生成了！");
        var qr = new QRious({
            element: document.getElementById("qrcode"),
            size: 312,
            value: '${pay}',
            level: 'H'
        });
        getResult();
    }
    //页面加载成功事件
    $(function () {
        createQrcode();
    });
    //检测支付状态函数
    function getResult() {
        $.ajax({
            url: "${pageContext.request.contextPath}/index?method=searchResult",
            type: "post",
            data: {"out_trade_no": '${orderid}'},
            dataType: "text",
            success: function (data) {
                if (data == "paysucceed") {
                    //支付成功
                    location.href = "${pageContext.request.contextPath}/index?method=weixinPaysucceed&rid=${route.rid}&orderid=${orderid}";
                }
                    //支付页面超时
                else if (data == "timeout") {
                    //如果超时重新生成二维码
                    //createQrcode();
                    location.href = "${pageContext.request.contextPath}/pay_jsp/psy_fail.jsp";
                }
                else {
                    location.href = "${pageContext.request.contextPath}/pay_jsp/psy_fail.jsp";
                }
            },
            error: function () {
                console.log("支付结果查询失败！");
            }
        });
    }


</script>
</body>

</html>
