'use strict';

// Declare app level module which depends on views, and components
var app = angular.module('app.palagend', ['ui.router', 'ui.bootstrap']);

// 路由配置
app.config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise("/deduct");

    $stateProvider
        .state('state1', {
            url: "/product",
            templateUrl: "../product/to-pub-product"
        })
        .state('state2', {
            url: "/deduct",
            templateUrl: '../html/deduct-config.html'
        });
});
// app.config(['$routeProvider', function($routeProvider) {
//     $routeProvider
//         .when('/', {
//             controller: 'MainCtrl',
//             templateUrl: '../html/deduct-config.html'
//         })
//         .when('/product-pubication', {
//             controller: 'ProductCtrl',
//             templateUrl: '../product/product-pubication.html'
//         })
//         .when('/deduct-config', {
//             controller: 'DeductCtrl',
//             templateUrl: '../html/deduct-config.html'
//         })
//         .when('/demo', {
//             controller: 'dateDemo',
//             templateUrl: '../test/date-demo.html'
//         })
//         .otherwise({
//             redirectTo: '/'
//         });
// }]);
