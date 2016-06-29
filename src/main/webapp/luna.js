'use strict';

// Declare app level module which depends on views, and components
var app = angular.module('palagend.app', ['ui.router','ngAnimate', 'mgcrea.ngStrap', 'plagend.controllers']);

// 路由配置
app.config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise("/deduct");

    $stateProvider
        .state('state2', {
            url: "/deduct",
            views: {
                '': {
                    templateUrl: '../html/deduct-config.html',
                    controller: 'DeductCtrl'
                }
            }
        })
        .state('state1', {
            url: "/product",
            views: {
                '': {
                    templateUrl: "../product/to-pub-product",
                    controller: 'ProductCtrl'
                }
            }
        });
});
