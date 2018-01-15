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
    <h2 class="pull-left"><i class="icon-home"></i> 销售详情</h2>
     	<div class="clearfix"></div>
  </div>
  <div class="matter">
      <div class="container">
		<table id="sale_table">
		</table>
      </div>
   </div>
  </div>

<div class="clearfix"></div>
<div class="modal fade bs-example-modal-sm" id="smodel" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
               &times;
           </button>
           <h4 class="modal-title" id="addTitle">
               	收款金额
           </h4>
       </div>
       <div class="modal-body">
       	<div class="row">
       		<form action="" id="incomeForm">
	       	 <div class="col-md-9">
	       	 	<input name="saleId" type="hidden" id="saleId">
	            <input type="number" id="money" name="money" class="form-control">
	       	 </div>
       		 <div class="col-md-3">
       			 <button type="button" onclick="income()" class="btn btn-primary btn-lg">确定</button>
       		 </div>
       		</form>
       	</div>
       </div>
       
    </div>
  </div>
</div>


<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span> 
<!-- JS -->
<script src="${webRoot}/js/jquery.js"></script> <!-- jQuery -->
<script src="${webRoot}/js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="${webRoot}/js/bootstrap-table.min.js"></script>
<script src="${webRoot}/js/bootstrap-table-zh-CN.min.js"></script>
<script src="${webRoot}/js/index.js"></script>
<script type="text/javascript">
$(function(){
	$("#sale_table").bootstrapTable({
	    url: '${webRoot}/admin/sale/getAll',
	    method: 'get',
	    striped:'true',
	    pagination:true,
	    search:true,
	    pageSize: 20,
	    detailView: true,//父子表
        pageList: [20, 30,40],
	    columns: [{
	        field: 'saleId',
	        title: '发货单编号',
	        width: '18%',
	        align: 'center'

	    }, {
	        field: 'salesman',
	        title: '销售员',
	        width: '10%',
	        align: 'center'
	    },{
	      field:'customer',
	      title:'客户',
	      width: '12%',
	      align: 'center'
	    },{
	      field:'time',
	      title:'时间',
	      align: 'center',
	      width: '15%',
	      formatter:function(value){
          	return value.year+'-'+value.monthValue+'-'+value.dayOfMonth;
          }
		},{
	   	  field:'freight',
	      title:'运费',
	      width: '10%',
	      align: 'center'
		},{
	      field:'discount',
	      title:'折扣',
	      align: 'center',
	      width: '10%'
	    },{
	      field:'getMoney',
	      title:'已收金额',
	      align: 'center',
	      width: '10%'
		},{
    	  field:'totalMoney',
	      title:'总额',
	      width: '10%',
	      align: 'center'
	    },{
    	  field:'',
	      title:'操作',
	      align: 'center',
	      formatter:function(value,row){
	    	  if(row.getMoney>=row.totalMoney){
	    		  return '-';
	    	  }
	          return [
	                '<a class="like" href="javascript:void(0)" onclick="opensmodel(\''+row.saleId+'\')" title="操作">',
	                '收款',
	                '</a>'
	            ].join('');
	        }
	    }],
	    //注册加载子表的事件。注意下这里的三个参数！
        onExpandRow: function (index, row, $detail) {

            var parentid = row.MENU_ID;
            var cur_table = $detail.html('<table></table>').find('table');
            $(cur_table).bootstrapTable({
                url: '${webRoot}/admin/sale/'+row.saleId+'/stove',
                method: 'get',
                pagination:'true',                
                uniqueId: "MENU_ID",
                pageSize: 10,
                pageList: [10, 25],
                columns: [{
                	field: 'stoveId',
                    title: '锅炉编号',
                    align:'center',
                    width: '30%',
                },{
                    field: 'type',
                    title: '类型',
                    align:'center'
                },{
                    field: 'model',
                    title: '型号',
                    align:'center',                    
                },{
                	field: 'price',
                    title: '售价',
                    align:'center', 
                },{
                	field: 'num',
                    title: '送货数量',
                    align:'center', 
                }]

            });

        }
  })
})
function opensmodel(saleId){
	$("#smodel").modal("show");
	$("#saleId").val(saleId);
	
}

function income(){
	$.post('${webRoot}/admin/sale/income',$("#incomeForm").serializeArray(),function(data){
		if(data.status==200){
			$("#smodel").modal("hide");
			alert("收款成功");
			$('#sale_table').bootstrapTable(
					"refresh",{url:"${webRoot}/admin/sale/getAll"});
			$("#money").val('');
		}else{
			alert(data.msg);
		}
	})
}
</script>
</body>
</html>