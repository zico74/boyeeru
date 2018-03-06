<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta charset="UTF-8">

<style>
.modal-wait-popup {
	text-align: center;
}

@media screen and (min-width: 768px) {.modal-wait-popup:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";height: 100%;}}

.modal-custom {
	display: inline-block;
	text-align: center;
	vertical-align: middle;
}
</style>

<div class="modal modal-info modal-wait-popup" id="modal-info" data-backdrop="static">
	<div class="modal-dialog modal-custom modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="modal-title">잠시만 기다려주세요.</div>
			</div>
			<div class="modal-body">
				<div class="fa-1x">
					<i class="fas fa-spinner fa-spin"></i> 잠시만 기다려주세요.
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<script>
	$(function() {
		$("#modal-info").modal();
	});
</script>