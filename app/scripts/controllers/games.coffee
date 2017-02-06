'use strict'

###*
 # @ngdoc function
 # @name dndApp.controller:GamesCtrl
 # @description
 # # GamesCtrl
 # Controller of the dndApp
###
angular.module 'dndApp'
  .controller 'GamesCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
