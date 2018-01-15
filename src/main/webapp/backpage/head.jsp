<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>瑞猛火凤凰炉具厂</title>
</head>
<body>
	<div class="navbar navbar-fixed-top bs-docs-nav" role="banner" style="min-width: 800px">
		<div class="conjtainer">
			<a href="javascript:void(0)" class="navbar-brand">瑞猛火凤凰炉具厂后台管理系统</a>
		</div>
		<!-- Navigation starts -->
		<nav class="collapse navbar-collapse bs-navbar-collapse"
			role="navigation"> <!-- Links -->
		<ul class="nav navbar-nav pull-right">
			<li class="dropdown pull-right"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <i class="icon-user"></i> 管理员
					<b class="caret"></b>
			</a>
				<ul class="dropdown-menu">
					<li><a href="#"><i class="icon-user"></i> 资料</a></li>
					<li><a href="#"><i class="icon-cogs"></i> 设置</a></li>
					<li><a href="/rmhfh/login"><i class="icon-off"></i> 退出</a></li>
				</ul></li>

		</ul>
		</nav>
	</div>
	<div class="content" style="margin-top: 16px;min-width: 800px">
	</div>
    <div class="sidebar">
        <ul id="nav">      
          <li><a href="#" class="open"><i class="icon-home"></i> 首页</a></li>
          <li class="has_sub">
          	<a href="#">
          		<i class="icon-list-alt"></i> 炉具管理  <span class="pull-right">
          		<i class="icon-chevron-right"></i></span>
          	</a>
            <ul>
              <li><a href="/rmhfh/admin/stove/add">新增炉具</a></li>
              <li><a href="/rmhfh/admin/stove/detail">炉具详情</a></li>
            </ul>
          </li> 
                          
          <li><a href="/rmhfh/admin/project"><i class="icon-bar-chart"></i>工程管理</a></li>    
		  <li class="has_sub">
          	<a href="#">
          		<i class="icon-list-alt"></i> 销售管理  <span class="pull-right">
          		<i class="icon-chevron-right"></i></span>
          	</a>
            <ul>
              <li><a href="/rmhfh/admin/sale/add">发       货</a></li>
              <li><a href="/rmhfh/admin/sale/detail">销售详情</a></li>
            </ul>
          </li>
          <li class="has_sub">
          	<a href="#">
          		<i class="icon-list-alt"></i>明细<span class="pull-right">
          		<i class="icon-chevron-right"></i></span>
          	</a>
            <ul>
              <li><a href="/rmhfh/admin/inout/in">入库明细</a></li>
              <li><a href="/rmhfh/admin/inout/out">出库明细</a></li>
            </ul>
          </li> 
          <li><a href="/rmhfh/admin/customer"><i class="icon-user"></i>客户管理</a></li>
        </ul>
    </div>
</body>
</html>