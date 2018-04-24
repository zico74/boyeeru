<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta charset="UTF-8">

<div class="row">
		<form class="form-horizontal" name='add'>
	<div class="col-md-12">
			<div class="form-group">
				<label for="groupCodeId" class="col-sm-2 control-label">그룹코드ID</label>
				<div class="col-sm-4">
					<input type="text" class="form-control boyeeru-form-required" id="groupCodeId"
						placeholder="그룹코드ID" name='groupCodeId'>
				</div>
				<label for="groupCodeNm" class="col-sm-2 control-label">그룹코드명</label>
				<div class="col-sm-4">
					<input type="text" class="form-control boyeeru-form-required" id="groupCodeNm"
						placeholder="그룹코드명" name='groupCodeNm'>
				</div>
			</div>
			<div class="form-group">
				<label for="estnAtrb1" class="col-sm-2 control-label">확장속성1</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="estnAtrb1"
						placeholder="확장속성1" name='estnAtrb1'>
				</div>
				<label for="estnAtrb2" class="col-sm-2 control-label">확장속성2</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="estnAtrb2"
						placeholder="확장속성2" name='estnAtrb2'>
				</div>
			</div>
			<div class="form-group">
				<label for="useAt" class="col-sm-2 control-label">사용여부</label>
				<div class="col-sm-4">
					<select class="form-control select2" id='useAt' name='useAt'>
						<option selected="selected" value='all'>전체</option>
						<option value='Y'>Y</option>
						<option value='N'>N</option>
					</select>
				</div>
			</div>
	</div>
	<div class="col-md-12">
		<button type="button" id='addReq' class="btn btn-xs btn-info pull-right" style='display: none;'><i class="fas fa-plus"></i> 저장</button>
		<button type="button" id='addRow' class="btn btn-xs btn-info pull-right"><i class="fas fa-plus"></i> 행추가</button>
		<button type="button" id='delRow' class="btn btn-xs btn-warning pull-right" style='margin-right: 1em;'><i class="fas fa-plus"></i> 행제거</button>
	</div>
	<div class="col-md-12">
	<p class="text-center">
                    <strong>가조쿠</strong>
                  </p>
		<table id="addGrid"></table>
		<div id="pager2"></div>
	</div>
	</form>
</div>

<script type="text/javascript">
$(document).ready(function() {
	var seq = 1;
	
	var grid = $("#addGrid").grid({
	   	url:"<c:url value='/sys/cmmn/codeJqGrid' />",
	   	colNames:['#', 'CODE_ID', 'CODE_NM', 'ESTN_ATRB_1', 'ESTN_ATRB_2', 'USE_AT'],
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
	   		{name: 'g_codeId', index: 'CODE_ID',editable: true, editoptions : {dataInit: function (elem) {
	   	        $(elem).addClass('boyeeru-grid-required');
	   	    }}},
	   		{name: 'g_codeNm', index: 'CODE_NM',editable: true,editoptions : {dataInit: function (elem) {
	   	        $(elem).addClass('boyeeru-grid-required');
	   	    }}},
	   		{name: 'g_estnAtrb1', index: 'ESTN_ATRB_1', editable: true},
	   		{name: 'g_estnAtrb2', index: 'ESTN_ATRB_2', editable: true},
	   		{name: 'g_useAt', index: 'USE_AT',formatter:'checkbox', edittype:'checkbox',formatter: "checkbox",editoptions: { value:"true:false"},editable:true,formatoptions: {disabled : false}}
// 	   			cellattr: function(rowId, tv, rawObject, cm, rdata) {
// 	   				console.log(rdata);
// 	   		        return ' style="display:none;"';
// 	   		    }}
	   	],
	   	onCellSelect: function (rowid, iCol, content, event) {
	   	},
	   	loadComplete: function(data) {
    		},
    		onSelectRow: function(rowid){
	   		$(this).find("#" + rowid).find("input[name=radio_addGrid]").prop('checked', true);
	   		var param = grid.grid.jqGrid('getGridParam', 'selrow');
    		   },
    		   afterEditCell: function (rowid, cellname, value, iRow, iCol) {
    			  },
    		datatype : 'local',
	   	pager: '#pager2',
	    sortname : "GROUP_CODE_ID",
	    sortorder: "desc",
	    caption : 'Sub Code Data'
	});
	
	$('#addRow').on('click', function(e) {
		var curSeq = seq++;
		grid.grid.addRowData(curSeq, {});
		grid.grid.editRow(curSeq, true);
	});
	
	$('#delRow').on('click', function(e) {
		var rowid = grid.grid.jqGrid('getGridParam', 'selrow');
		
		if (null == rowid) return;
		
		grid.grid.jqGrid('delRowData', rowid);
	});
	
	$('#addReq').on('click', function(e) {
		console.log($('form[name=add]').serialize());
		$.ajax({
	        type : "POST",
	        data : $('form[name=add]').serialize(),
	        url : '<c:url value="/sys/cmmn/code/add" />',
	        error : function() {
	        },
	        success : function(data) {
	        }
	 
	      });
		console.log($('form[name=add]'));
	});
	
	console.log(1);
});
</script>