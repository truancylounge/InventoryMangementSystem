(function(angular) {
  'use strict';
angular.module('rawmaterial', [])
  .controller('RawMaterialController', ['$scope', function($scope) {
    $scope.name;
    $scope.quantity;   
    $scope.unit;    
    $scope.price;
    $scope.totalPrice;
    $scope.items = [{
      "name" : "Milk",
      "quantity" : "4",
      "unit" : "litre",
      "price" : 25,
      "totalPrice" : 100
    },
    {
      "name" : "Floor",
      "quantity" : "4",
      "unit" : "litre",
      "price" : 25,
      "totalPrice" : 100
    },
    {
      "name" : "Chocolate",
      "quantity" : "2",
      "unit" : "kgs",
      "price" : 25,
      "totalPrice" : 50
    },
    {
      "name" : "Cream",
      "quantity" : "4",
      "unit" : "kgs",
      "price" : 25,
      "totalPrice" : 100
    },
    {
      "name" : "Cake",
      "quantity" : "4",
      "unit" : "",
      "price" : 100,
      "totalPrice" : 400
    }];
    $scope.addRows = function() {
      $scope.items.push({"name": $scope.name, "quantity" : $scope.quantity, "unit": $scope.unit, "price": $scope.price, "totalPrice": $scope.totalPrice});
    };
  }]);
})(window.angular);