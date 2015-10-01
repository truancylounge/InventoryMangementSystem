(function(angular) {
  'use strict';
angular.module('invoice1', [])
  .controller('InvoiceController', function() {
    this.qty = 1;    
    this.currencies = ['USD', 'EUR', 'CNY'];
  });
})(window.angular);