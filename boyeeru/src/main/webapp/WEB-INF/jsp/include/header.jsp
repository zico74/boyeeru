<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- jggrid css -->
<link
	href="<c:url value='/resources/jqgrid_JS_4.4.3/css/ui.jqgrid.css' />"
	rel="stylesheet" type="text/css">

<!-- jquery ui -->
<link
	href="<c:url value='/resources/jquery-ui-1.12.1.custom/jquery-ui.css' />"
	rel="stylesheet" type="text/css">

<!-- jqeury -->
<%-- <script type="text/javascript" src="<c:url value='/resources/jqgrid_JS_4.4.3/js/jquery-1.7.2.min.js' />"></script> --%>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript">
    jQuery.browser = {};
    (function () {
         jQuery.browser.msie = false;
         jQuery.browser.version = 0;
         if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
              jQuery.browser.msie = true;
              jQuery.browser.version = RegExp.$1;
         }
    })();
</script>
<!-- jggrid js -->
<script type="text/javascript" src="<c:url value='/resources/jqgrid_JS_4.4.3/js/jquery.jqGrid.src.js' />"></script>
<script type="text/javascript" src="<c:url value='/resources/jqgrid_JS_4.4.3/js/i18n/grid.locale-kr.js' />"></script>

<!-- jquery ui -->
<script type="text/javascript" src="<c:url value='/resources/jquery-ui-1.12.1.custom/jquery-ui.js' />"></script>

<!-- fontawesome-free-5.0.6 -->
<script type="text/javascript" src="<c:url value='/resources/fontawesome-free-5.0.6/svg-with-js/js/fontawesome-all.js' />"></script>

<!-- utils -->
<script type="text/javascript" src="<c:url value='/resources/cmmn/utils/boyeeru-utils.js' />"></script>
<script type="text/javascript" src="<c:url value='/resources/cmmn/grid/boyeeru-grid.js' />"></script>

<!-- bkModal -->
<link
	href="<c:url value='/resources/cmmn/modal/boyeeru-modal.css' />"
	rel="stylesheet" type="text/css">
<script type="text/javascript" src="<c:url value='/resources/cmmn/modal/boyeeru-modal.js' />"></script>