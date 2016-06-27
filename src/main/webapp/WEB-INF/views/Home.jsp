<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh-cn">

	<head>
		<!-- jQuery -->
		<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
		<!-- AngularJs  -->
		<script src="${pageContext.request.contextPath}/bower_components/angular/angular.js"></script>


		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
		<meta charset="utf-8"/>
		<title>河南有线分销系统后台管理</title>

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="../assets/css/bootstrap.css"/>
		<link rel="stylesheet" href="../assets/css/font-awesome.css"/>

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="../assets/css/ace-fonts.css"/>

		<!-- ace styles -->
		<link rel="stylesheet" href="../assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style"/>

		<!--[if lte IE 9]> <link rel="stylesheet" href="../assets/css/ace-part2.css" class="ace-main-stylesheet" /> <![endif]-->

		<!--[if lte IE 9]> <link rel="stylesheet" href="../assets/css/ace-ie.css" /> <![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="../assets/js/ace-extra.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]> <script src="../assets/js/html5shiv.js"></script> <script src="../assets/js/respond.js"></script> <![endif]-->
	</head>

	<body class="no-skin" ng-app="app.palagend">
		<!-- #section:basics/navbar.layout -->
		<div id="navbar" class="navbar navbar-default">
			<script type="text/javascript">
				try {
					ace.settings.check('navbar', 'fixed')
				} catch (e) {}
			</script>

			<div class="navbar-container" id="navbar-container">
				<!-- #section:basics/sidebar.mobile.toggle -->
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="#" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							Ace Admin
						</small>
					</a>

					<!-- /section:basics/navbar.layout.brand -->

					<!-- #section:basics/navbar.toggle -->

					<!-- /section:basics/navbar.toggle -->
				</div>

				<!-- #section:basics/navbar.dropdown -->
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="grey">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-check"></i>
									4 Tasks to complete
								</li>

								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Task Name</span>
													<span class="pull-right">65%</span>
												</div>

												<div class="progress progress-mini">
													<div style="width:65%" class="progress-bar"></div>
												</div>
											</a>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									<a href="#">
										See tasks with details
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-bell icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-exclamation-triangle"></i>
									8 Notifications
								</li>

								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar navbar-pink">
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														New Comments
													</span>
													<span class="pull-right badge badge-info">+12</span>
												</div>
											</a>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									<a href="#">
										See all notifications
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i>
									5 Messages
								</li>

								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#" class="clearfix">
												<img src="../assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar"/>
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span>
														Message Summary
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>Message Time</span>
													</span>
												</span>
											</a>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									<a href="inbox.html">
										See all messages
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<!-- #section:basics/navbar.user_menu -->
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="../assets/avatars/user.jpg" alt="Jason's Photo"/>
								<span class="user-info">
									<small>Welcome,</small>
									Jason
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										Settings
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="ace-icon fa fa-power-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>

						<!-- /section:basics/navbar.user_menu -->
					</ul>
				</div>

				<!-- /section:basics/navbar.dropdown -->
			</div>
			<!-- /.navbar-container -->
		</div>

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive">
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed')
					} catch (e) {}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

						<!-- #section:basics/sidebar.layout.shortcuts -->
						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>

						<!-- /section:basics/sidebar.layout.shortcuts -->
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div>
				<!-- /.sidebar-shortcuts -->

				<ul class="nav nav-list">
					<li class="">
						<a href="${pageContext.request.contextPath}/html/index.html">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text">
								Dashboard
							</span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
								功能菜单
							</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<!-- Start Your Work Here ^_^ -->
							<li class="">
								<a ui-sref="state1">
									<i class="menu-icon fa fa-caret-right"></i>
									发布基础产品
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a ui-sref="state2">
									<i class="menu-icon fa fa-caret-right"></i>
									配置分销商提成
								</a>
								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="${pageContext.request.contextPath}/html/elements.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Elements
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="${pageContext.request.contextPath}/html/buttons.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Buttons &amp; Icons
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>
				</ul>
				<!-- /.nav-list -->

				<!-- #section:basics/sidebar.layout.minimize -->
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>

				<!-- /section:basics/sidebar.layout.minimize -->
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'collapsed')
					} catch (e) {}
				</script>
			</div>

			<!-- /section:basics/sidebar -->
			<div class="main-content" ng-controller="MainCtrl">
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<div date-picker timezone="Asia/Hong_Kong"></div>
							<div class="widget-box" ui-view></div>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->
		</div>
		<!-- /.main-container -->

		<!-- basic scripts -->
		<script src="../assets/js/bootstrap.js"></script>
		<!-- page specific plugin scripts -->
		<!--
		<script src="../assets/js/jquery-ui.custom.js"></script>
		<script src="../assets/js/jquery.ui.touch-punch.js"></script>
		<script src="../assets/js/chosen.jquery.js"></script>
		<script src="../assets/js/fuelux/fuelux.spinner.js"></script>
		<script src="../assets/js/date-time/bootstrap-datepicker.js"></script>
		<script src="../assets/js/date-time/bootstrap-timepicker.js"></script>
		<script src="../assets/js/date-time/moment.js"></script>
		<script src="../assets/js/date-time/daterangepicker.js"></script>
		<script src="../assets/js/date-time/bootstrap-datetimepicker.js"></script>
		<script src="../assets/js/bootstrap-colorpicker.js"></script>
		<script src="../assets/js/jquery.knob.js"></script>
		<script src="../assets/js/jquery.autosize.js"></script>
		<script src="../assets/js/jquery.inputlimiter.1.3.1.js"></script>
		<script src="../assets/js/jquery.maskedinput.js"></script>
		<script src="../assets/js/bootstrap-tag.js"></script>
	-->
		<!-- ace scripts -->
		<script src="../assets/js/ace/elements.scroller.js"></script>
		<script src="../assets/js/ace/elements.colorpicker.js"></script>
		<script src="../assets/js/ace/elements.fileinput.js"></script>
		<script src="../assets/js/ace/elements.typeahead.js"></script>
		<script src="../assets/js/ace/elements.wysiwyg.js"></script>
		<script src="../assets/js/ace/elements.spinner.js"></script>
		<script src="../assets/js/ace/elements.treeview.js"></script>
		<script src="../assets/js/ace/elements.wizard.js"></script>
		<script src="../assets/js/ace/elements.aside.js"></script>
		<script src="../assets/js/ace/ace.js"></script>
		<script src="../assets/js/ace/ace.ajax-content.js"></script>
		<script src="../assets/js/ace/ace.touch-drag.js"></script>
		<script src="../assets/js/ace/ace.sidebar.js"></script>
		<script src="../assets/js/ace/ace.sidebar-scroll-1.js"></script>
		<script src="../assets/js/ace/ace.submenu-hover.js"></script>
		<script src="../assets/js/ace/ace.widget-box.js"></script>
		<script src="../assets/js/ace/ace.settings.js"></script>
		<script src="../assets/js/ace/ace.settings-rtl.js"></script>
		<script src="../assets/js/ace/ace.settings-skin.js"></script>
		<script src="../assets/js/ace/ace.widget-on-reload.js"></script>
		<script src="../assets/js/ace/ace.searchbox-autocomplete.js"></script>

		<!-- angular-ui-->
		<script src="http://cdn.bootcss.com/angular-ui-bootstrap/1.0.0/ui-bootstrap-tpls.js"></script>
		<script src="${pageContext.request.contextPath}/bower_components/angular-ui-router/release/angular-ui-router.js"></script>
		<!-- Customized JS -->
		<script src="${pageContext.request.contextPath}/luna.js"></script>
		<script src="${pageContext.request.contextPath}/components/controllers.js"></script>
	</body>
</html>
