<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta charset="UTF-8">



<div class="row">
<div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">검색조건</h3>
              
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
              <div class="box-body">
            <form class="form-horizontal">
                <div class="form-group">
                  <label for="groupCodeId" class="col-sm-2 control-label">그룹코드ID</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" id="groupCodeId" placeholder="그룹코드ID">
                  </div>
                  <label for="groupCodeNm" class="col-sm-2 control-label">그룹코드명</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" id="groupCodeNm" placeholder="그룹코드명">
                  </div>
                </div>
                <div class="form-group">
                  <label for="codeId" class="col-sm-2 control-label">코드ID</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" id="codeId" placeholder="코드ID">
                  </div>
                  <label for="codeNm" class="col-sm-2 control-label">코드명</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" id="codeNm" placeholder="코드명">
                  </div>
                </div>
                <div class="form-group">
                  <label for="estnAtrb1" class="col-sm-2 control-label">확장속성1</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" id="estnAtrb1" placeholder="확장속성1">
                  </div>
                  <label for="estnAtrb2" class="col-sm-2 control-label">확장속성2</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" id="estnAtrb2" placeholder="확장속성2">
                  </div>
                </div>
                <div class="form-group">
                <label for="useAt" class="col-sm-2 control-label">사용여부</label>
                <div class="col-sm-4">
                <select class="form-control select2" id='useAt'>
                  <option selected="selected" value='all'>전체</option>
                  <option value='Y'>Y</option>
                  <option value='N'>N</option>
                </select>
              </div>
              </div>
            </form>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="button" class="btn btn-default">초기화</button>
                <button type="button" class="btn btn-info pull-right"><i class="fas fa-search"></i> 조회</button>
                <button type="button" id='add' class="btn btn-success pull-right" style='margin-right: 1em;'><i class="fas fa-plus"></i> 신규추가</button>
              
              <div id="dialog-form" title="공통코드 추가">
				</div>
              
              </div>
              <!-- /.box-footer -->
          </div>
          <!-- /.box -->
          <!-- general form elements disabled -->
          
          <!-- /.box -->
        </div>
<div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Monthly Recap Report</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <div class="btn-group">
                  <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-wrench"></i></button>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-12">
                  <p class="text-center">
                    <strong>가조쿠</strong>
                  </p>

                  <table id="list"></table>
					<div id="pager"></div>
                </div>
                <!-- /.col -->
              <!-- /.row -->
            </div>
            </div>
            <!-- ./box-body -->
            <div class="box-footer">
              <div class="row">
                <div class="col-sm-3 col-xs-6">
                  <div class="description-block border-right">
                    <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 17%</span>
                    <h5 class="description-header">$35,210.43</h5>
                    <span class="description-text">TOTAL REVENUE</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-3 col-xs-6">
                  <div class="description-block border-right">
                    <span class="description-percentage text-yellow"><i class="fa fa-caret-left"></i> 0%</span>
                    <h5 class="description-header">$10,390.90</h5>
                    <span class="description-text">TOTAL COST</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-3 col-xs-6">
                  <div class="description-block border-right">
                    <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span>
                    <h5 class="description-header">$24,813.53</h5>
                    <span class="description-text">TOTAL PROFIT</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-3 col-xs-6">
                  <div class="description-block">
                    <span class="description-percentage text-red"><i class="fa fa-caret-down"></i> 18%</span>
                    <h5 class="description-header">1200</h5>
                    <span class="description-text">GOAL COMPLETIONS</span>
                  </div>
                  <!-- /.description-block -->
                </div>
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        </div>
<script type="text/javascript">
$(document).ready(function() {
	$("#list").grid({
	   	url:"<c:url value='/sys/cmmn/codeJqGrid' />",
	   	colNames:['#', 'GROUP_CODE_ID', 'GROUP_CODE_NM', 'INFO', 'USE_AT'],
	   	colModel:[
	   		{name: '_selRow', index: '_selRow', width: 40, align: 'center', editable:false, edittype:"radio"
				, sortable:false
				, classes:'pss-jqgrid-pointer-nodecoration'
				, formatter: function (cellValue, option) {
					return '<input type="radio" name="radio_' + option.gid + '"  />';
				}
// 				cellattr: function(rowId, tv, rawObject, cm, rdata) {
// 					var length = $(this).jqGrid('getGridParam','colNames');
// 					console.log(length);
// 			         return ' colspan=2'; 
// 			    }
	   		},
	   		{name: 'groupCodeId', index: 'GROUP_CODE_ID'},
	   		{name: 'groupCodeNm', index: 'GROUP_CODE_NM'},
	   		{name: 'info', index: 'INFO'},
	   		{name: 'useAt', index: 'USE_AT'},
// 	   			cellattr: function(rowId, tv, rawObject, cm, rdata) {
// 	   				console.log(rdata);
// 	   		        return ' style="display:none;"';
// 	   		    }}
	   	],
	   	onCellSelect: function (rowid, iCol, content, event) {
	   		$(this).find("#" + rowid).find("input[name=radio_list]").prop('checked', true);
	   		var param = $(this).jqGrid('getGridParam', 'selrow');
	   		console.log(param);
	   		console.log($(this).getRowData(param));
	   	},
	   	loadComplete: function(data) {
    		},
	   	pager: '#pager',
	    sortname : "GROUP_CODE_ID",
	    sortorder: "desc",
	    caption: "Group Code Data"
	});
	
	var dialog = $( "#dialog-form" ).dialog({
	      autoOpen: false,
	      height: 480,
	      width: 640,
	      modal: true,
	      open : function() {
	    	  	$( this ).load( "<c:url value='/sys/cmmn/code/add' />" );
	      },
	      buttons: [
	    	    {
	    	        html: '<i class="fas fa-save"></i> 저장',
	    	        click: function() {
	    	        		$('#addReq').trigger('click');
	    	        }
	    	      }
	    	    ]
	    });
	
	$('#add').on('click', function(e) {
		dialog.dialog( "open" );
	});
	
	$('.box').boxWidget();
});
</script>