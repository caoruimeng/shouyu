<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>瑞猛火凤凰炉具厂</title>

<link rel="stylesheet" type="text/css" href="${webRoot}/style/bootstrap.css">
<style type="text/css">
.main{
	width: 500px;
	margin-left: auto;
	margin-right: auto;
	
}
</style>
</head>

<body>
<div class="main">
	<h2>瑞猛火凤凰炉具厂后台管理系统</h2>
	<div class="content col-md-9">
		<div class="title hide">管理登录</div>
		<form name="login" action="/rmhfh/user_login" method="post">
			<fieldset>
				<div class="input">
					<input class="form-control" name="username" id="name"  placeholder="用户名">
				</div>
				<br>
				<div class="input">
					<input class="form-control" name="password" id="password" type="password"  placeholder="密码">
				</div>
				<br>
				<div class="enter">
					<input class="btn btn-primary btn-lg btn-block" name="submit" type="submit" value="登录" />
				</div>
			</fieldset>
		</form>
	</div>
</div>
<script type="text/javascript" src="${webRoot }/js/jquery.js"></script>
</body>
</html>