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
    <h2 class="pull-left"><i class="icon-home"></i> 锅炉详情</h2>
     	<div class="clearfix"></div>
  </div>
  <div class="matter">
      <div class="container">
	<table id="stove_table">
	</table>

      </div>
  </div>
</div>

<div class="modal fade bs-example-modal-sm" id="smodel" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
               &times;
           </button>
           <h4 class="modal-title" id="addTitle">
               	入库数目
           </h4>
       </div>
       <div class="modal-body">
       	<div class="row">
       		<form action="" id="inRepForm">
	       	 <div class="col-md-9">
	       	 	<input name="stoveId" type="hidden" id="stoveId">
	            <input type="number" id="num" name="num" class="form-control"
	              onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9]+/,'');}).call(this)" onblur="this.v();" placeholder="数量">
	       	 </div>
       		 <div class="col-md-3">
       			 <button type="button" onclick="inPro()" class="btn btn-primary btn-lg">确定</button>
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
	$("#stove_table").bootstrapTable({
	    url: '${webRoot}/admin/stove/getAll',
	    method: 'get',
	    striped:'true',
	    pagination:true,
	    search:true,
	    pageSize: 20,
        pageList: [20, 30,40],
	    columns: [{
	        field: 'stoveId',
	        title: '锅炉编号',
	        width: '25%',
	        align: 'center'

	    },{
	      field:'type',
	      title:'类型',
	      width: '15%',
	      align: 'center'
	    },{
	        field: 'model',
	        title: '型号',
	        width: '15%',
	        align: 'center'
	    },{
    	  field:'number',
	      title:'库存',
	      width: '10%',
	      align: 'center'
	    },{
	   	  field:'sellPrice',
	      title:'售价',
	      width: '10%',
	      align: 'center'
		},{
	      field:'',
	      title:'操作',
	      align: 'center',
	      width: '25%',
	      formatter:function(value,row){
	          return [
	                '<a class="like" href="javascript:void(0)"  onclick="opensmodel(\''+row.stoveId+'\')" title="编辑">',
	                '入库',
	                '</a> '	               
	            ].join('');
	        }
	      
	    }]    
  })
})
function opensmodel(stoveId){
	$("#smodel").modal("show");
	$("#stoveId").val(stoveId);
	
}

function inPro(){
	$.post('${webRoot}/admin/stove/inRep',$("#inRepForm").serializeArray(),function(data){
		if(data.status==200){
			$("#smodel").modal("hide");
			alert("入库成功");
			$('#stove_table').bootstrapTable(
					"refresh",{url:"${webRoot}/admin/stove/getAll"});
			$("#num").val(0);
		}
	})
}
</script>
</body>
</html>