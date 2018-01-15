<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${webRoot}/style/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="${webRoot}/style/font-awesome.css">
<link rel="stylesheet" href="${webRoot}/style/jquery-ui.css">
<link href="${webRoot}/style/style.css" rel="stylesheet">
<link href="${webRoot}/style/widgets.css" rel="stylesheet">
<link rel="shortcut icon" href="${webRoot}/img/favicon/favicon.png">
<link rel="stylesheet" type="text/css" href="${webRoot}/style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${webRoot}/style/bootstrap-table.min.css">
<link rel="stylesheet" type="text/css" href="${webRoot}/jedate/skin/jedate.css">
</head>
<body onload="init()">
<jsp:include page="head.jsp"></jsp:include>
<div class="mainbar">   
    <div class="page-head">
      <h2 class="pull-left"><i class="icon-user"></i>发货</h2>
       	<div class="clearfix"></div>
    </div>
    <div class="matter">
	   <div class="col-md-10" style="background-color: #ffffff;">       
	      <h1 style="text-align: center;">发货</h1>
	      <div>
      		<form class="form-inline" id="addsale"  method="post">
                  <div class="row" style="margin: 10px;">
                     <div class="col-md-3">
                        <label>时间</label>
                        <input class="form-control datainp wicon" name="localTime"  size="3" id="date03" type="text" 
                        placeholder="YYYY-MM-DD"  readonly>
                     </div>
                     <div class="col-md-3">
                        <label>客户</label>
                        <select class="form-control" name="customer" placeholder="选择客户" >
                              <c:forEach var="customer" items="${customerList }">
                              	<option value="${customer.customerId}">${customer.name}</option>
                              </c:forEach>
                        </select>
                     </div>
                     <div class="col-md-2">
                        <label>运费</label>
                        <input class="form-control" name="freight" value="0" type="number" placeholder="运费">
                     </div>
                     <div class="col-md-2">
                        <label>折扣</label>
                        <input class="form-control" id="discount" onchange="setTotal()" name="discount" value="0" type="number" placeholder="折扣">
                     </div>
                     <div class="col-md-2">
                        <label>&nbsp;</label>
                        <a style="margin-top: 16px;" class="btn btn-primary btn-lg" href="javascript:void(0)" onclick="addtr()">添加</a>
                     </div>
                  </div>
                  
                 <div class="row" style="margin-right: 30px;margin-left: 10px;margin-top: 20px;margin-bottom: 20px;">
                 	<table class="col-md-11 table table-hover" id="saletable">
                      <thead>
                        <th width="20%" style="text-align: center;">锅炉</th>
                        <th width="20%" style="text-align: center;">单价</th>
                        <th width="20%" style="text-align: center;">数量</th>
                        <th width="20%" style="text-align: center;">总额</th>
                        <th width="20%" style="text-align: center;">操作</th>
                      </thead>

                      <tbody>
                         
                      </tbody>
                    </table>
                 </div> 
                  
                 <div class="row" style="float:right;margin-right: 30px;margin-left: 10px;margin-top: 20px;margin-bottom: 20px;">
                 	<h3 style="color: red" id="total">总价:</h3>
                 	<input type="hidden" name="totalMoney" id="totalMoney">
                 </div>
                  
                  <div class="row" style="margin-right: 30px;margin-left: 10px;margin-top: 20px;margin-bottom: 20px;">
                    <input type="button" class="btn btn-primary btn-lg btn-block" onclick="submitFrom()" value="确定">
                  </div>
                </form>
	      </div>
	      
	   </div>
    </div>
</div>


<script src="${webRoot}/js/jquery.js"></script> <!-- jQuery -->
<script src="${webRoot}/js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="${webRoot}/js/bootstrap-table.min.js"></script>
<script src="${webRoot}/js/bootstrap-table-zh-CN.min.js"></script>
<script src="${webRoot}/jedate/jquery.jedate.js"></script>
<script src="${webRoot}/js/index.js"></script>
<script src="${webRoot}/js/sale_add.js"></script>
</body>
</html>