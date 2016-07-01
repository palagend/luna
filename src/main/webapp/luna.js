'use strict';

// Declare app level module which depends on views, and components
var app = angular.module('palagend.app', ['ui.router','ngAnimate', 'mgcrea.ngStrap', 'plagend.controllers']);

// 路由配置
app.config(function($stateProvider, $urlRouterProvider ) {
    $urlRouterProvider.otherwise("/member");

    $stateProvider
        .state('member', {
            url: "/member",
            views: {
                '': {
                    templateUrl: '../html/member.html',
                    controller: 'MemberCtrl'
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
