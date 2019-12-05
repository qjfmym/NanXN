<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>用户注册</title>
        <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" href="css/register.css">
		<!--导入jquery-->
		
		<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
		<script type="text/javascript">
			//页面加载事件
			 $(function () {
				 // 校验用户名: 是否为空,是否符合规则 
				var usernameTag=document.getElementById("username");
				usernameTag.onblur=function(){
			        if(usernameTag.value){
			        	usernameTag.setCustomValidity("");//现将有输入时的提示设置为空
			        }else if(usernameTag.validity.valueMissing){
			        	usernameTag.setCustomValidity("用户名不能为空");  
			        };
			        if(usernameTag.validity.patternMismatch){ 
			        	usernameTag.setCustomValidity("用户名长度6~18位，必须为英文字母开头，其余为数字或英文字母或下划线");
			        }
			    };
			 // 校验用户名: 是否已经存在
			    $("#username").blur(function(){
			        //校验用户名是否已经存在
			        //alert("成功!");
					var username = $(this).val().trim();
					if(!username){
						return ;
					}
				   	var url = "${pageContext.request.contextPath}/user";
					var params = "username="+username;
					$.post("${pageContext.request.contextPath}/user", 
							{"method":"findByUsername","username":username},
					    function(data){
								//alert(data);
								usernameTag.setCustomValidity(data); 
					   },
					   "text"
					);
			    })
				 
				// 校验密码:是否为空,是否符合规则 
			 	var passwordTag=document.getElementById("password");
			 	passwordTag.onblur=function(){
			        if(passwordTag.value){
			        	passwordTag.setCustomValidity("");//现将有输入时的提示设置为空
			        }else if(password.validity.valueMissing){
			        	passwordTag.setCustomValidity("密码不能为空");  
			        };
			        if(passwordTag.validity.patternMismatch){ 
			        	passwordTag.setCustomValidity("密码不能含空格,且长度至少6位");
			        }
			    }; 
			 
			    // 邮箱校验: 判空,格式 
			 	var emailTag=document.getElementById("email");
			 	emailTag.onblur=function(){
			        if(emailTag.value){
			        	emailTag.setCustomValidity("");//现将有输入时的提示设置为空
			        }else if(emailTag.validity.valueMissing){
			        	emailTag.setCustomValidity("邮箱不能为空");  
			        };
			        if(emailTag.validity.patternMismatch){ 
			        	emailTag.setCustomValidity("请输入正确格式的邮箱");
			        }
			    }; 
			    // 邮箱校验: 判断邮箱是否已经存在
			    $("#email").blur(function(){
					var email = $(this).val().trim();
					if(!email){
						return ;
					}
				   	var url = "${pageContext.request.contextPath}/user";
					var params = "email="+email;
					$.post("${pageContext.request.contextPath}/user", 
							{"method":"findByEmail","email":email},
					    function(data){
								//alert(data)
								emailTag.setCustomValidity(data); 
					   },
					   "text"
					);
			    })
			    // 手机号校验: 判空,格式 
			 	var telephoneTag=document.getElementById("telephone");
			 	telephoneTag.onblur=function(){
			        if(telephoneTag.value){
			        	telephoneTag.setCustomValidity("");//现将有输入时的提示设置为空
			        }else if(telephoneTag.validity.valueMissing){
			        	telephoneTag.setCustomValidity("手机号不能为空");  
			        };
			        if(telephoneTag.validity.patternMismatch){ 
			        	telephoneTag.setCustomValidity("请输入正确的手机号");
			        }
			    };  
			    //手机号校验,是否已经存在
			    $("#telephone").blur(function(){
					var telephone = $(this).val().trim();
					if(!telephone){
						return ;
					}
				   	var url = "${pageContext.request.contextPath}/user";
					var params = "telephone="+telephone;
					$.post("${pageContext.request.contextPath}/user", 
							{"method":"findByTelephone","telephone":telephone},
					    function(data){
								//alert("telephone")
								telephoneTag.setCustomValidity(data); 
					   },
					   "text"
					);
			    })
				// 密码等级 提示
			    $('#password').keyup(function(e) {
			    	 var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
			    	 var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
			    	 var enoughRegex = new RegExp("(?=.{6,}).*", "g");
			    	 if (false == enoughRegex.test($(this).val())) {
			    	 $('#passstrength').html('');
			    	 } else if (strongRegex.test($(this).val())) {
			    	 $('#passstrength').className = 'ok';
			    	 $('#passstrength').html('(强)&nbsp');
			    	 $('#passstrength').attr('style','color:green');
			    	 } else if (mediumRegex.test($(this).val())) {
			    	 $('#passstrength').className = 'alert';
			    	 $('#passstrength').html('(中)&nbsp');
			    	 $('#passstrength').attr('style','color:orange');
			    	 } else {
			    	 $('#passstrength').className = 'error';
			    	 $('#passstrength').html('(弱)&nbsp');
			    	 $('#passstrength').attr('style','color:red');
			    	 }
			    	 return true;
			    	});
			    // H5 验证码校验: 判空,格是否正确, 前台|后台判断...
			    /*var checkTag=document.getElementById("check");
			    //alert(1)
			 	checkTag.onsubmit=function(){
			    var msgg ='${msg}';
			    //	alert(2)
			 		checkTag.setCustomValidity(msgg);
			    	msgg="";
			    //	alert(3)
			    };  */
            });
			
		</script>
    </head>
	<body>
	<!--引入头部-->

        <!-- 头部 end -->
    	<div class="rg_layout" >
    		<div class="rg_form clearfix">
    			<div class="rg_form_left">
    				<p>新用户注册</p>
    				<p>USER REGISTER</p>
    			</div>
    			<div class="rg_form_center">
					
					<!--注册表单-->
    				<form id="registerForm" method="post" action="${pageContext.request.contextPath}/user">
    				
						<!--提交处理请求的标识符-->
						<input type="hidden" name="method" value="register">
    					<table style="margin-top: 25px;">
    						<tr >
    							<td class="td_left" nowrap = "nowrap">
    								<label for="username" >用户名</label>
        					
    							</td>
    							<td class="td_right" >
    								<input type="text" id="username" value="${user.username}" required name="username" placeholder="英文字母开头,字母/数字/下划线/6-18位" autofocus="autofocus" pattern="^[a-zA-Z]\w{5,17}$">
    							</td>
    							<td >
    							<!--登录错误提示消息-->
    								<span id="usename_msg"></span>
    							</td>
    						</tr>
    							
    						<tr>
    							<td class="td_left" nowrap = "nowrap">
    								<label for="password"><span style="color:red" id="passstrength"></span>密码</label>
    							</td>
    							<td class="td_right" >
    								<input type="password" id="password" required name="password" placeholder="密码不能含空格,且长度至少6位" pattern="^\S{6,12}$">
    							</td>
    							<td class="td_right" >
    								<label><input type="checkbox" onclick="checkit(this.checked)" ><i></i>显示密码</label>
    								<script type="text/javascript">
    								function checkit(isChecked) {
    								    if (isChecked) {
    								        $("#password").prop("type", 'text');
    								    } else {
    								        $("#password").prop("type", 'password');
    								    }
    								}
    								</script>
    							</td>
    						</tr>
    						<tr>
    							<td class="td_left">
    								<label for="email">Email</label>
    							</td>
    							<td class="td_right">
    								<input type="text" id="email" required name="email" placeholder="请输入Email(必填)" pattern="^([0-9a-zA-Z_-])+@([0-9a-zA-Z_-])+(\.[0-9a-zA-Z]+)$" >
    							</td>
    						</tr>
    						<tr>
    							<td class="td_left">
    								<label for="name">姓名</label>
    							</td>
    							<td class="td_right">
    								<input type="text" id="name" name="name" placeholder="请输入真实姓名">
    							</td>
    						</tr>
    						<tr>
    							<td class="td_left">
    								<label for="telephone">手机号</label>
    							</td>
    							<td class="td_right">
    								<input type="text" id="telephone" required name="telephone" placeholder="请输入您的手机号(必填)" pattern="^1[3|4|5|7|8]\d{9}$">
    							</td>
    						</tr>
    						<tr>
    							<td class="td_left">
    								<label for="sex">性别</label>
    							</td>
    							<td class="td_right gender">
    								<input type="radio" id="sex" name="sex" value="男" checked> 男
    								<input type="radio" name="sex" value="女"> 女
    							</td>
    						</tr>
    						<tr>
    							<td class="td_left">
    								<label for="birthday">出生日期</label>
    							</td>
    							<td class="td_right">
    								<input type="date" id="birthday" name="birthday" placeholder="年/月/日">
    							</td>
    						</tr>
    						<tr>
    							<td class="td_left">
    								<label for="check">验证码</label>
    							</td>
    							<td class="td_right check">
    								<input type="text" id="check" name="check" class="check" required>
     								<div><img src="${pageContext.request.contextPath}/code1" onclick="this.src='${pageContext.request.contextPath}/code1?'+Math.random()" style="height:31px"/></div>
     							<!-- 	<img src="checkCode" height="32px" alt="" onclick="changeCheckCode(this)">
									<script type="text/javascript">
										//图片点击事件
										function changeCheckCode(img) {
											img.src="checkCode?"+new Date().getTime();
                                        }
									</script> -->
    							</td>
    						</tr>
    						<tr>
    							<td class="td_left"> 
    							</td>
    							<td class="td_right check"> 
    								<input type="submit" class="submit" value="注册">
									<span id="msg" style="color: red;">${msg}</span>
    							</td>
    						</tr>
    					</table>
    				</form>
    			</div>
    			<div class="rg_form_right">
    				<p >
    					已有账号？
    					<a href="${pageContext.request.contextPath}/login.jsp">立即登录</a>
    				</p>
    				<p >
    					<span id="usernameMsg" align="top"></span>
    				</p>
    			</div>
    		</div>
    	</div>
        <!--引入尾部-->
    	<%@include file="footer.jsp"%>
		<!--导入布局js，共享header和footer-->
		<script type="text/javascript" src="js/include.js"></script>
    	
    </body>
</html>