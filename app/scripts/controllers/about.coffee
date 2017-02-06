'use strict'

###*
 # @ngdoc function
 # @name dndApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the dndApp
### 
angular.module 'dndApp'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
