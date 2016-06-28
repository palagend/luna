angular.module('plagend.controllers', [])

.controller('DeductCtrl', function($scope) {
    $scope.values = [100, 200, 300, 400, 500, 1000];
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
