<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<title>用户管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 用户中心 <span class="c-gray en">&gt;</span> 用户管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="text-c"> 日期范围：
		<input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}' })" id="datemin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d' })" id="datemax" class="input-text Wdate" style="width:120px;">
		<input type="text" class="input-text" style="width:250px" placeholder="输入会员名称、电话、邮箱" id="" name="">
		<button type="submit" class="btn btn-success radius" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜用户</button>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> 
	<span class="l">
	<a href="javascript:;" onclick="deleteAll()" class="btn btn-danger radius">
	<i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
	  </span> 
	  <span class="r">共有数据：<strong>${ammount}</strong> 条</span> </div>
	<div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg table-sort">
		<thead>
			<tr class="text-c">
				<th width="25"><input type="checkbox"  id="checkAll" name="" value=""></th>
				<th width="80">ID</th>
				<th width="100">评论者</th>
				<th width="150">评论的内容</th>
				<th width="130">评论发表时间</th>
				<th width="130">评论主题</th>
				<th width="100">操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${commentList}" var="comment">
			<tr class="text-c">
				<td><input type="checkbox" value="${comment.id }" name="checkOne"></td>
				<td>${comment.id }</td>
				<td>${comment.user.name}</td>
				<td class="text-l">${comment.comment}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${comment.craeteDdate}"/></td>
				<td>${comment.route.rname}</td>
				<td class="td-manage">
				<a title="删除" href="javascript:void(0);" onclick="deleteComment('${comment.id }')"  class="btn radius btn-secondary" style="text-decoration:none">删除<i class="Hui-iconfont">&#xe6e2;</i></a>
				</td>
			 </tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
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
		window.location.href="${pageContext.request.contextPath}/admin?method=deleteCommentS&array="+array;
	});
}

$(function(){
	$('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0]}// 制定列不参与排序
		]
	});
});

var msg = '${msg}';
if(msg!=null&&msg.trim()!=''){
	layer.msg(msg,{icon: 6,time:1000});
	 <%
	 request.setAttribute("msg","");
     %>
}
/**
 * 删除评论
 */
function deleteComment(commid) {
	layer.confirm('确认删除此评论吗?',function(index){
		 window.location.href="${pageContext.request.contextPath}/admin?method=deleteComment&commid="+commid;
	});
}

</script> 
</body>
</html>