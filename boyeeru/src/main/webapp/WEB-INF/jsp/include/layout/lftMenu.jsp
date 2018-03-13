<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta charset="UTF-8">

<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="https://yt3.ggpht.com/-0bTtU5ndTCE/AAAAAAAAAAI/AAAAAAAAAAA/DP9iK9LRGsw/s176-c-k-no-mo-rj-c0xffffff/photo.jpg" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>Alexander Pierce</p>
				<a href="#">
					<i class="fa fa-circle text-success"></i>
					Online
				</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control" placeholder="Search...">
				<span class="input-group-btn">
					<button type="submit" name="search" id="search-btn" class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form -->
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">MAIN NAVIGATION</li>
			<li class="active">
				<a href="<c:url value='' />">
					<i class="fa fa-th"></i>
					<span>보이루</span>
					<span class="pull-right-container">
						<small class="label pull-right bg-green">컹스</small>
					</span>
				</a>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-bars"></i>
					<span>운영관리</span>
					<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li>
						<a class='menu-sub' href="<c:url value='/sys/cmmn/code' />">
							<i class="fa fa-bars"></i>
							공통코드
						</a>
					</li>
				</ul>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fas fa-child"></i>
					<span>Utils</span>
					<span class="pull-right-container">
						<i class="fas fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li>
						<a class='menu-sub' href="<c:url value='/mng/people' />">
							<i class="fas fa-newspaper"></i>
							jqGrid
						</a>
					</li>
					<li class="treeview">
						<a href="#">
							<i class="fas fa-newspaper"></i>
							JqGrid
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li>
								<a class='menu-sub' href="<c:url value='/utils/jqgrid/normal' />">
									<i class="fa fa-circle-o"></i>
									default
								</a>
							</li>
							<li class="treeview">
								<a href="#">
									<i class="fa fa-circle-o"></i>
									Level Two
									<span class="pull-right-container">
										<i class="fa fa-angle-left pull-right"></i>
									</span>
								</a>
								<ul class="treeview-menu">
									<li>
										<a href="#">
											<i class="fa fa-circle-o"></i>
											Level Three
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-circle-o"></i>
											Level Three
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
			</li>
			<li class="treeview">
				<a href="#">
					<i class="fa fa-share"></i>
					<span>Multilevel</span>
					<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li>
						<a href="#">
							<i class="fa fa-circle-o"></i>
							Level One
						</a>
					</li>
					<li class="treeview">
						<a href="#">
							<i class="fa fa-circle-o"></i>
							Level One
							<span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
							</span>
						</a>
						<ul class="treeview-menu">
							<li>
								<a href="#">
									<i class="fa fa-circle-o"></i>
									Level Two
								</a>
							</li>
							<li class="treeview">
								<a href="#">
									<i class="fa fa-circle-o"></i>
									Level Two
									<span class="pull-right-container">
										<i class="fa fa-angle-left pull-right"></i>
									</span>
								</a>
								<ul class="treeview-menu">
									<li>
										<a href="#">
											<i class="fa fa-circle-o"></i>
											Level Three
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-circle-o"></i>
											Level Three
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-circle-o"></i>
							Level One
						</a>
					</li>
				</ul>
			</li>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>

<script type="text/javascript">
	$(document).ready(function() {
		$(".sidebar-menu .menu-sub").on("click", function(e) {
			$.bkNotification.show({
				size : 1,
				'class' : 'fa-circle-notch fa-spin',
				text : '잠시만 기다려주세요.'
			});
			//Utils.stopEvent(e);

// 			var that = this, url = $(that).attr('href');

// 			$.ajax({
// 				type : "GET",
// 				url : url,
// 				error : function() {
// 				},
// 				success : function(data) {
// 					$('.sidebar-menu').find('.active').removeClass('active');
// 					$(that).parents("li").addClass("active");
// 					$('.content').html(data);
// 				}

// 			});
		});
	});
</script>