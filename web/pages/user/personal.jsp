<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>李智恩小屋注册</title>
<%@include file="/pages/common/header.jsp"%>
	<script type="text/javascript">
	$(function () {
		$("#codeimag").click(function () {
			this.src="${basepath}userservlet?action=createcode&d="+new Date();
		})
$("#sub_btn").click(function () {
var usernametext=$("#username").val();
var usernamepatt=/^\w{5,12}$/;
if(!usernamepatt.test(usernametext)){
	$("span.errorMsg").text("用户名不合法");
return false;
}
	var passwordtext=$("#password").val();
	var passwordpatt=/^\w{5,12}$/;
	if(!passwordpatt.test(passwordtext)){
		$("span.errorMsg").text("密码不合法");
		return false;
	}
	var repasswordtext=$("#repwd").val();
	if(repasswordtext!=passwordtext){
		$("span.errorMsg").text("密码不一致");
		return false;
	}
	var emailtext=$("#email").val();
	var emailpatt=/^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
	if(!emailpatt.test(emailtext)){
		$("span.errorMsg").text("邮箱格式不合法");
		return false;
	}
	// var codetext=$("code").val();
	// var codetext2=$.trim(codetext)
	// if(codetext2==null||codetext2==""){
	// 	$("span.errorMsg").text("验证码不能为空");
	// 	return false;
	// }
	$("span.errorMsg").text("");
})
	})
	</script>
<style type="text/css">
	.login_form{
		height:420px;
		margin-top: 25px;
	}
	
</style>
</head>
<body>
		<div id="login_header">
		</div>
		
			<div class="login_banner">
			
				<div id="l_content">
					<span class="login_word">个人中心</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h1>个人信息修改</h1>
								<span class="errorMsg"></span>
							</div>
							<div class="form">
								<form action="userservlet" method="post">
									<input type="hidden" name="action" value="regist"/>
									<label>用户名称：</label>
									<input autocomplete="off" class="itxt" id="username" name="username" placeholder="请输入用户名" tabindex="1" type="text" value="${sessionScope.user.username}" />
									<br />
									<br />
									<label>原密码密码：</label>
									<input autocomplete="off" class="itxt" id="password" name="password" placeholder="请输入密码" tabindex="1" type="text" value="${sessionScope.user.password}" />
									<br />
									<br />
									<label>输入密码：</label>
									<input autocomplete="off" class="itxt" id="newpassword" name="repwd" placeholder="确认密码" tabindex="1" type="password" />
									<br />
									<br />
									<label>确认密码：</label>
									<input autocomplete="off" class="itxt" id="repwd" name="repwd" placeholder="确认密码" tabindex="1" type="password" />
									<br />
									<br />
									<label>电子邮件：</label>
									<input autocomplete="off" class="itxt" id="email" name="email" placeholder="请输入邮箱地址" tabindex="1" type="text"  value="${sessionScope.user.email}"/>
									<br />
									<br />
									<label>验证码：</label>
									<input class="itxt" id="code"  name="code" style="width: 80px;" type="text"/>
									<img alt="" id="codeimag" src="userservlet?action=createcode" style="float: right; margin-right: 40px" width="120px" height="28px">
									<br />
									<br />
									<input id="sub_btn" type="submit" value="确认修改" />
									
								</form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		<div id="bottom">
			<span>
				李智恩下载器.Copyright &copy;2020
			</span>
		</div>
</body>
</html>