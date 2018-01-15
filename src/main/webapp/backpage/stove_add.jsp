<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/context/mytags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>瑞猛火凤凰炉具厂</title>
<link href="${webRoot}/style/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="${webRoot}/style/font-awesome.css">
<link rel="stylesheet" href="${webRoot}/style/jquery-ui.css">
<link href="${webRoot}/style/style.css" rel="stylesheet">
<link href="${webRoot}/style/widgets.css" rel="stylesheet">
<link rel="shortcut icon" href="${webRoot}/img/favicon/favicon.png">
<link rel="stylesheet" type="text/css" href="${webRoot}/style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${webRoot}/style/bootstrap-table.min.css">
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
  	<div class="mainbar">   
	    <div class="page-head">
	      <h2 class="pull-left"><i class="icon-home"></i> 添加锅炉信息</h2>
        	<div class="clearfix"></div>
	    </div>
	    <div class="matter">
	        <div class="container">
				<div class="col-md-10" style="background-color: #ffffff;">       
	              <h1 style="text-align: center;">新增炉具</h1>
	              <div>
	                <form class="form-inline" id="addform" action="addStove" method="post">
	                  <legend>基本信息</legend>
	                  <div class="row" style="margin: 10px;">
	                     <div class="col-md-3">
	                        <label>类型</label>
	                        <select class="form-control" name="type">
	                        	<c:forEach var="type" items="${typeList}">
	                        		<option value="${type.name }">${type.name}</option>
	                        	</c:forEach>
	                        </select>
	                     </div>
	                     <div class="col-md-3">
	                        <label>型号</label>
	                        <input class="form-control" name="model" placeholder="型号: 例:210平">
	                     </div>
	                     <div class="col-md-3">
	                        <label>成本</label>
	                        <input class="form-control" name="productionCost" type="number" placeholder="成本价格">
	                     </div>
	                     <div class="col-md-3">
	                        <label>预售价</label>
	                        <input class="form-control" name="sellPrice" type="number" placeholder="预售价">
	                     </div>
	                  </div>
	                  <div class="row" style="margin: 20px;">
	                    <textarea class="form-control" rows="4" name="description" placeholder="描述"></textarea>
	                  </div>
	                  
	                  <div class="row" style="margin-right: 30px;margin-left: 10px;margin-top: 20px;margin-bottom: 20px;">
	                    <input type="submit" class="btn btn-primary btn-lg btn-block" value="保存">
	                  </div>
	                </form>
	              </div>
	          </div>
	
	      </div>
      </div>
  </div>

  <div class="clearfix"></div>



<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span> 
<!-- JS -->
<script src="${webRoot}/js/jquery.js"></script> <!-- jQuery -->
<script src="${webRoot}/js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="${webRoot}/js/bootstrap-table.min.js"></script>
<script src="${webRoot}/js/bootstrap-table-zh-CN.min.js"></script>
<script src="${webRoot}/js/index.js"></script>
<script type="text/javascript">
$(function(){
	
	
})

function submit(){
	
}

</script>

</body>
</html>