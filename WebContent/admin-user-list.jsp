<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/h-ui.admin/css/style.css" />
<title>用户管理</title>
<style type="text/css">
u{
	color: blue;
	text-decoration: none;
}
a{
color: white;
text-decoration: none;
}
</style>

</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 用户中心 <span class="c-gray en">&gt;</span> 用户管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="text-c"> 
	<form method="post" action="${pageContext.request.contextPath}/admin?method=likesearch">
	日期范围：
		<input type="text" name="time1" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}' })"placeholder="此项必填" id="datemin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text"  name="time2"onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d' })"  placeholder="此项必填"id="datemax" class="input-text Wdate" style="width:120px;">
		<input type="text" name="message" class="input-text" style="width:250px" placeholder="输入用户的姓名" >
		<button type="submit"  class="btn btn-success radius" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜用户</button>
	</form>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l">
	<a href="javascript:;" onclick="deleteAll()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> 
	 <a href="javascript:;" onclick="member_add('添加用户','admin_add_user.jsp','','510')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加新用户</a></span> <span class="r">共有数据：<strong>${ammount}</strong> 条</span> </div>
	<div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg table-sort">
		<thead>
			<tr class="text-c">
				<th width="25"><input type="checkbox" name="" id="checkAll" value=""></th>
				<th width="80">ID</th>
				<th width="80">头像</th>
				<th width="100">用户名</th>
				<th width="40">性别</th>
				<th width="90">手机</th>
				<th width="150">邮箱</th>
				<th width="130">用户生日</th>
				<th width="70">用户状态</th>
				<th width="150">操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="use">
			<tr class="text-c">
				<td><input type="checkbox" value="${use.uid}" name="checkOne"></td>
				<td>${use.uid}</td>
				<td>
			   <img alt="" src="${pageContext.request.contextPath}/${use.image}" style="width: 35px;height:35px;">	
				</td>
				<td>${use.name}</td>
				<td>${use.sex}</td>
				<td>${use.telephone}</td>
				<td>${use.email}</td>
				<td>${use.birthday}</td>
				<td class="td-status">
				<c:if test="${use.status=='Y' }">
				<span class="label label-success radius"><a href="javaScript:void(0)" onclick="getCkeck('${use.uid}','${use.code}')">审核通过</a></span>
				</c:if>
				<c:if test="${use.status=='N' }">
				<span class="label label-warning radius"><a href="javaScript:void(0)" onclick="passCkeck('${use.uid}','${use.code}')">待审核</a></span>
				</c:if>
				</td>
				<td class="td-manage">
				<a title="删除" href="javascript:void(0);" onclick="deleteUser1('${use.uid}')"  class="btn radius btn-secondary" style="text-decoration:none">删除<i class="Hui-iconfont">&#xe6e2;</i></a>
			    <a title="编辑" href="${pageContext.request.contextPath}/admin?method=getUserById&uid=${use.uid}" class="btn btn-primary radius" style="text-decoration:none">编辑<i class="Hui-iconfont">&#xe6df;</i></a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
function selectAlert() {
	layer.msg(msg,{icon:6 ,time:1000});
}

/**
 * 批量删除
 */
function deleteAll() {
	var checs  = document.getElementsByName("checkOne");
	var length = 0;
	var  array  = new Array();
	for(var i=0;i<checs.length;i++){
		if (checs[i].checked==true) {
			array[length] = checs[i].value;
			length = length+1;
		}
	}
	layer.confirm('批量删除需谨慎,你确认删除吗?',function(index){
		window.location.href="${pageContext.request.contextPath}/admin?method=deleteUserS&array="+array;
	});
}

var msg = '${msg}';
if(msg!=null&&msg.trim()!=''){
	layer.msg(msg,{icon: 6,time:1000});
	 <%
	 request.setAttribute("msg","");
     %>
}
/**
 * 审核用户
 */
function passCkeck(uid,ucode) {
	layer.confirm('确认要启用吗?',function(index){
		 window.location.href="${pageContext.request.contextPath}/admin?method=active&code="+ucode;
	});
}

/**
 * 审核用户
 */
function getCkeck(uid,ucode) {
	layer.confirm('确认停用吗?',function(index){
		 window.location.href="${pageContext.request.contextPath}/admin?method=active&code="+ucode;
	});
}
/**
 * 删除用户
 */
function deleteUser1(uid) {
	layer.confirm('确认要启用吗?',function(index){
		 window.location.href="${pageContext.request.contextPath}/admin?method=delete&uid="+uid;
	});
}

/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}


/*用户-编辑*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}

$(function(){
	$('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,8]}// 制定列不参与排序
		]
	});
	
});

/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
				$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
				$(obj).remove();
				layer.msg('已启用!',{icon: 6,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});
	});
}

</script> 
</body>
</html>