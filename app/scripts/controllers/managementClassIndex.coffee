'use strict'

###*
 # @ngdoc function
 # @name dndApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the dndApp
### 


angular.module('dndApp').controller 'ManagementClassIndexCtrl', 
  (
    $scope
    Klass
  ) ->

    Klass.all().getList({with_stats: false}).then (res) ->
      vm.classes = res
      console.log('Classes')
      console.log(vm.classes.plain())

    vm = {}
    $scope.vm = vm
