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
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
  	<div class="mainbar">   
	    <div class="page-head">
	      <h2 class="pull-left"><i class="icon-user"></i>客户管理</h2>
        	<div class="clearfix"></div>
	    </div>
	    <div class="matter">
		   <div class="row" style="margin-left: 10px;margin-right: 20px;">
		   		<div style="margin-left: 30px;">
					<button type="button" onclick="openModal()" class="btn btn-primary btn-lg" data-toggle="modal">
					  新增客户
					</button>
		   		</div>
		        <div class="container">
					<table id="customer_table">
					</table>
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
        <h4 class="modal-title" id="myModalLabel">客户信息</h4>
      </div>
      <div class="modal-body" id="app">
      	<div class="row" style="margin-left: 10px;margin-right: 10px;">
        	<form action="" id="khform" class="form-inline">
        		<input type="hidden" name="customerId" id="customerId" v-model="customer.customerId"/>
        		<div class="row" style="margin-top: 5px;">
                  <div class="col-md-3" >
                      <label>姓名</label>
                      <div class="indiv">
                          <input class="form-control" name="name" id="name" v-model="customer.name" placeholder="客户名">
                      </div>
                  </div>
                   <div class="col-md-9" >
                      <label>地址</label>
                      <div class="indiv">
                          <input type="text" name="address" class="form-control" v-model="customer.address" placeholder="地址">
                      </div>
                  </div>                 
               </div>   
               <div class="row" style="margin-top: 5px;">
                  <div class="col-md-12">
                      <label>描述</label>
                      <div class="indiv">
                         <textarea name="description" class="form-control" rows="4" v-model="customer.description" placeholder="添加描述"></textarea>
                      </div>
                  </div>
                    
                </div>                
            </form>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" onclick="addOrUpdate()">保存</button>
      </div>
    </div>
  </div>
</div>

<script src="${webRoot}/js/jquery.js"></script> <!-- jQuery -->
<script src="${webRoot}/js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="${webRoot}/js/bootstrap-table.min.js"></script>
<script src="${webRoot}/js/bootstrap-table-zh-CN.min.js"></script>
<script src="https://cdn.bootcss.com/vue/2.2.2/vue.min.js"></script>
<script src="${webRoot}/js/index.js"></script>
<script type="text/javascript">
$(function(){
	$("#customer_table").bootstrapTable({
	    url: '${webRoot}/admin/customer/getAll',
	    method: 'get',
	    striped:'true',
	    pagination:true,
	    search:true,
	    pageSize: 20,
        pageList: [20, 30,40],	    
	    columns: [{
	        field: 'customerId',
	        title: '客户ID',
	        width: '20%',
	        align: 'center'

	    }, {
	        field: 'name',
	        title: '姓名',
	        width: '10%',
	        align: 'center'
	    },{
	      field:'address',
	      title:'地址',
	      width: '25%',
	      align: 'center'
	    },{
    	  field:'description',
	      title:'说明',
	      width: '35%',
	      align: 'center'
	    },{
	      field:'',
	      title:'操作',
	      align: 'center',
	      width: '10%',
	      formatter:function(value,row){
	    	 
	          return [
	                '<a class="glyphicon glyphicon-pencil" href="javascript:void(0)" onclick="edit(\''+row.customerId+'\',\''+row.name+'\',\''+row.address+'\',\''+row.description+'\')" title="编辑">',
	                '编辑',
	                '</a>'
	            ].join('');
	        }
	      
	    }]	     
  })
})

var app = new Vue({
  el: '#app',
  data: {
	 customer:{}
  },
  methods:{
	  editCustomer:function(c){
		  this.customer=c;
	  }
  }
})

function edit(customerId,name,address,description){
	 var customer={
			 "customerId": customerId,
			 "name": name,
			 "address": address,
			 "description": description
	 };

	 $("#myModal").modal("show");
	 app.editCustomer(customer);
}

function addOrUpdate(){
	var url;
	if($("#customerId").val()=='' || $("#customerId").val()==null){
		url="${webRoot}/admin/customer/add"
	}else{
		url="${webRoot}/admin/customer/update"
		
	}
	$.post(url,$("#khform").serializeArray(),function(data){
		console.log(data);
		$("#myModal").modal("hide");
		$('#customer_table').bootstrapTable(
				"refresh",{url:"${webRoot}/admin/customer/getAll"});
	})
		
}
function openModal(){
	$("#myModal").modal("show");
	app.editCustomer({});
}
</script>

</body>
</html>