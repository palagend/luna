<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<title>产品详情</title>

		<link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css"/>

		<script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
		<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
		<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	</head>
	<body>
		<article class="container">
			<header class="row">
				<h1 >产品详情介绍</h1>
			</header>

			<section class="row ">
				<div class="col-md-4 ">
					<img class="img-responsive img-rounded" src="<%=basePath%>images/products/${product.code}.jpg" alt="图片不可见"/>
				</div>
				<div class="col-md-7 " ng-app="appPal" ng-controller="MainController">
					<p>
						<span class="badge">产品名称：</span>${product.name}</p>
					<p>
						<span class="badge">产品单价：</span>${product.price/100.0}元</p>
					<p>
						<span class="badge">注意事项：</span>${product.notice}</p>
					<form class="form form-inline" method="post" role="form">
						<div class="form-group">
							<input class="form-control input-lg" name="tvn" ng-model="modelVar" value="" placeholder="请输入客户电视号"/>
							<!-- 按钮触发模态框 -->
							<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" data-ng-click="clickToOpen()">
								前往开通
							</button>
						</div>
					</form>
					<!-- 模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;
									</button>
									<h4 class="modal-title" id="myModalLabel">
										客户信息确认
									</h4>
								</div>
								<div class="modal-body">
									<div ng-show="show">
										客户基本信息
										<hr/>
										<span ng-bind="none"></span>
										<span ng-bind="customer.clientName"></span>
										<span ng-bind="customer.noticePhone"></span>
										<span ng-bind="customer.address"></span>
										<span ng-bind="customer.tvn"></span>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">关闭
									</button>
									<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="alert('订购成功')">
										确认订购
									</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal -->
					</div>
				</div>
				<!--/[ng-controller]-->
			</section>

			<section class="well row">
				<dl>
					<c:forEach items="${product.pkgItems}" var="item">
						<dt style="list-style:none;">
							<i class="glyphicon glyphicon-ok"></i>
							${item.name}
						</dt>
						<dd class="col-md-offset-1">${item.description}</dd>
					</c:forEach>
				</dl>
			</section>

		</article>
		<script>
			var app = angular.module("appPal", []);
			app.controller("MainController", function ($scope, $http, $log) {
				$scope.clickToOpen = function () {
					$http.get("<%=basePath%>customer/find-customer?tvn=" + $scope.modelVar).success(function (response) {

						if (!response) {
							$scope.none = "查无此人!";
							$scope.customer = null;
						} else {
							$scope.none = "";
							$scope.customer = response;
						}

						$scope.show = true;
					});
				}
			});
		</script>
	</body>
</html>
