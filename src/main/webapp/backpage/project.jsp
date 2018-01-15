<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>瑞猛火凤凰炉具厂</title>
<link rel="stylesheet" href="${webRoot}/style/font-awesome.css">
<link href="${webRoot}/style/style.css" rel="stylesheet">
<link rel="shortcut icon" href="${webRoot}/img/favicon/favicon.png">
<link href="${webRoot}/style/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${webRoot}/style/bootstrap-table.min.css">
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="mainbar">   
    <div class="page-head">
      <h2 class="pull-left"><i class="icon-home"></i>工程管理</h2>
       	<div class="clearfix"></div>
    </div>
    <div class="matter">
        <div class="container">
			 <div class="row" style="margin-left: 10px;margin-right: 20px;">
		   		<div style="margin-left: 30px;">
					<button type="button" onclick="openModal()" class="btn btn-primary btn-lg" data-toggle="modal">
					 发布工程
					</button>
		   		</div>
		        <div class="container">
					<table id="project_table"></table>
		        </div>
		   	</div>

     	</div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">发布工程</h4>
      </div>
      <div class="modal-body" id="app">
      	<div class="row" style="margin-left: 10px;margin-right: 10px;">
        	<form action="" id="proform" class="form-inline">
        		
        		<div class="row" style="margin-top: 5px;">
                  <div class="col-md-9" >
                      <label>生产炉型:</label>
                      <div class="indiv">
                          <select class="form-control" name="stoveId">
                          	<c:forEach items="${stoveList}" var="stove">
                          	 <option value="${stove.stoveId}">${stove.type}--${stove.model}</option>
                          	</c:forEach>
                          </select>
                      </div>
                  </div>
                   <div class="col-md-3" >
                      <label>数量</label>
                      <div class="indiv">
                          <input type="number" name="num" class="form-control"
                           onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9]+/,'');}).call(this)" onblur="this.v();" placeholder="数量">
                      </div>
                  </div>                 
               </div>   
                               
            </form>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" onclick="addPro()">发布</button>
      </div>
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
	       	 	<input name="stoveId" type="hidden" id="stoveId"><input type="hidden" name="proId" id="proId">
	           <input type="number" name="num" class="form-control"
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
	$("#project_table").bootstrapTable({
	    url: '${webRoot}/admin/project/getAll',
	    method: 'get',
	    striped:'true',
	    pagination:true,
	    search:true,
	    pageSize: 20,
        pageList: [20, 30,40],	    
	    columns: [{
	        field: 'proId',
	        title: '工程Id',
	        width: '20%',
	        align: 'center'

	    }, {
	        field: 'type',
	        title: '类型',
	        width: '10%',
	        align: 'center'
	    },{
	      field:'model',
	      title:'型号',
	      width: '25%',
	      align: 'center'
	    },{
    	  field:'num',
	      title:'总数量',
	      width: '10%',
	      align: 'center'
	    },{
    	  field:'getNum',
	      title:'已收数量',
	      width: '10%',
	      align: 'center'
	    },{
	      field:'',
	      title:'操作',
	      align: 'center',
	      width: '10%',
	      formatter:function(value,row){
	    	  console.log(row.stoveId)
	    	  if(row.getNum<row.num)
	          return [
	                '<a class="glyphicon glyphicon-align-right" onclick="opensmodel(\''+row.stoveId+'\',\''+row.proId+'\')" href="javascript:void(0)" onclick="edit(\''+row.customerId+'\',\''+row.name+'\',\''+row.address+'\',\''+row.description+'\')" title="编辑">',
	                '入库',
	                '</a>'
	            ].join('');
	        }
	      
	    }]	     
  })
})
function openModal(){
	$("#myModal").modal("show");
	
}

function opensmodel(stoveId,id){
	$("#smodel").modal("show");
	$("#stoveId").val(stoveId);
	$("#proId").val(id);
}
function addPro(){
	$.post('${webRoot}/admin/project/addPro',$('#proform').serializeArray(),function(data){
		if(data.status==200){
			$("#myModal").modal("hide");
			$('#project_table').bootstrapTable(
					"refresh",{url:"${webRoot}/admin/project/getAll"});
		}
	})
}

function inPro(){
	$.post('${webRoot}/admin/project/inRep',$("#inRepForm").serializeArray(),function(data){
		if(data.status==200){
			$("#smodel").modal("hide");
			$('#project_table').bootstrapTable(
					"refresh",{url:"${webRoot}/admin/project/getAll"});
		}else if(data.status==203){
			$("#smodel").modal("hide");
			alert("已收数量不得大于总数目");
		}
	})
}
</script>
</body>
</html>