'use strict';

// Declare app level module which depends on views, and components
var app = angular.module('app.palagend', ['ngRoute']);

//定义主Controller
app.controller('MainCtrl', function($scope) {
    $scope.model = "Hello WORLD!";
});

// 路由配置
app.config(['$routeProvider', function($routeProvider) {
    $routeProvider
        .when('/', {
            controller: 'MainCtrl',
            templateUrl: '../html/deduct-config.html'
        })
        .when('/product-pubication', {
            controller: 'ProductCtrl',
            templateUrl: '../product/product-pubication.html'
        })
        .when('/deduct-config', {
            controller: 'DeductCtrl',
            templateUrl: '../html/deduct-config.html'
        })
        .otherwise({
            redirectTo: '/'
        });
}]);
