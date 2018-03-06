<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/WEB-INF/jsp/include/header.jsp"%>
<title>Insert title here</title>

<script type="text/javascript">
$(document).ready(function() {
	jQuery("#list2").jqGrid({
	   	url:"<c:url value='/jqgrid/demoJqGrid' />",
		datatype: "json",
		jsonReader : { 
			page : "page", 
			total : "total", 
			records : "records",
			root : "data",
			repeatitems : false
		},
	   	colNames:['Inv No'],
	   	colModel:[
	   		{name:'z1',index:'z1', width:55},
	   	],
	   	rowNum:10,
	   	rowList:[10,20,30],
	   	pager: '#pager2',
	    viewrecords: true,
	    sortorder: "desc",
	    caption:"JSON Example",
	    loadComplete: function(data) {
	    		console.log(data);
	    }
	});
});
</script>

</head>
<body>
<table id="list2"></table>
<div id="pager2"></div>
</body>
</html>