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
    <h2 class="pull-left"><i class="icon-home"></i>入库明细</h2>
     	<div class="clearfix"></div>
  </div>
  <div class="matter">
      <div class="container">
	<table id="in_table">
	</table>

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
	$("#in_table").bootstrapTable({
	    url: '${webRoot}/admin/inout/getInDetail',
	    method: 'get',
	    striped:'true',
	    pagination:true,
	    search:true,
	    pageSize: 20,
        pageList: [20, 30,40],
	    columns: [{
	        field: 'inId',
	        title: '编号',
	        width: '25%',
	        align: 'center'
	    },{
	        field: 'type',
	        title: '类型',
	        width: '15%',
	        align: 'center'
	    },{
	      field:'model',
	      title:'型号',
	      width: '15%',
	      align: 'center'
	    },{
    	  field:'num',
	      title:'数量',
	      width: '10%',
	      align: 'center'
	    },{
	   	  field:'time',
	      title:'时间',
	      width: '10%',
	      align: 'center',
	      formatter:function(value,row){
	    	  console.log(value);
	          return value.year+"-"+value.monthValue+"-"+value.dayOfMonth+" "+value.hour+":"+value.minute;
	        }
		},{
	      field:'description',
	      title:'描述',
	      align: 'center',
	      width: '25%'
	    }]    
  })
})
</script>
</body>
</html>