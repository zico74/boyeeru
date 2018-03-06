<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta charset="UTF-8">

<div class="row">
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
	var grid = jQuery("#list").jqGrid({
	   	url:"<c:url value='/mng/peopleJqGrid' />",
		datatype: "json",
		jsonReader : { 
			page : "page", 
			total : "total", 
			records : "records",
			root : "data",
			repeatitems : false
		},
	   	colNames:['#', 'id', 'first name', 'last name', 'email', 'gender', 'ipAddress', 'countryCode', 'isbn'],
	   	colModel:[
	   		{name: '_selRow', index: '_selRow', width: 40, align: 'center', editable:false, edittype:"radio"
				, sortable:false
				, classes:'pss-jqgrid-pointer-nodecoration'
				, formatter: function (cellValue, option) {
					return '<input type="radio" name="radio_' + option.gid + '"  />';
				}
	   		},
	   		{name:'id',index:'ID', width:120},
	   		{name:'firstName',index:'FIRST_NAME', width:120,editable:true},
	   		{name:'lastName',index:'LAST_NAME', width:120,editable:true},
	   		{name:'email',index:'EMAIL', width:120,editable:true},
	   		{name:'gender',index:'GENDER', width:120,editable:true},
	   		{name:'ipAddress',index:'IP_ADDRESS', width:120,editable:true},
	   		{name:'countryCode',index:'COUNTRY_CODE', width:120,editable:true},
	   		{name:'isbn',index:'ISBN', width:120,editable:true},
	   	],
	   	onCellSelect: function (rowid, iCol, content, event) {
	   		var param = $(this).jqGrid('getGridParam', 'selrow');
	   		$(this).find("#" + rowid).find("input[name=radio_list]").prop('checked', true);
	   		console.log($(this).jqGrid('getRowData', rowid));
	   	},
	   	ondblClickRow: function (rowid, iRow, iCol) {
// 	   		console.log(rowid);
// 	   		var colModels = $(this).getGridParam('colModel');
// 	   		var colName = colModels[iCol].name;
	   		
// 	   		$(this).jqGrid('setGridParam', {cellEdit: true});
// 	   		$(this).setColProp(colName, { editable:true });
// 	   		$(this).editCell(iRow, iCol, true);
	   	},
	   	rowNum:10,
	   	rowList:[10,20,30],
	   	width : "100%",
		height : "100%",
	   	autowidth: false,
	   	pager: '#pager',
	   	loadonce : false,
	    viewrecords: true,
	    sortname : "ID",
	    sortorder: "desc",
	    caption:"JSON Example",
	    loadComplete: function(data) {
	    		console.log(data);
	    }
	});
	
	$('.box').boxWidget();
});
</script>
