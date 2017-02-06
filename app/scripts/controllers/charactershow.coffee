'use strict'

###*
 # @ngdoc function
 # @name dndApp.controller:CharactershowCtrl
 # @description
 # # CharactershowCtrl
 # Controller of the dndApp
###
angular.module('dndApp').controller 'CharactershowCtrl', 
(
  $q
  $scope
  $stateParams
  Character
) ->

  promises = []

  promises.push(Character.one($stateParams.id).get())

  $q.all(promises).then (res) ->
    vm.character = res[0]
    console.log vm.character.plain()
    vm.original_base_ability_score_id = angular.copy(vm.character.base_ability_score.id)
    delete vm.character.base_ability_score.id
    vm.attr_keys = Object.keys(vm.character.base_ability_score)


  vm = 
    character: {}
    attr_keys: []
  $scope.vm = vm