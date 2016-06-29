angular.module('plagend.controllers', [])

.controller('DeductCtrl', function($scope) {
    $scope.values = [100, 200, 300, 400, 500, 1000];
    $scope.selectedDate = "2016-06-29T05:15:46.609Z"; // <- [object Date]
    $scope.selectedDateAsNumber = 509414400000; // <- [object Number]
    $scope.fromDate = undefined; // <- [object Undefined]
    $scope.untilDate = undefined;; // <- [object Undefined]
})

.controller('ProductCtrl', function($scope) {
    $scope.model = "Hello WORLD!";
})


.controller('LoginCtrl', function($scope) {
    $scope.reset = function() {
        $scope.username = "";
        $scope.password = "";
    }
})
