'use strict'

###*
 # @ngdoc function
 # @name dndApp.controller:CharacternewCtrl
 # @description
 # # CharacternewCtrl
 # Controller of the dndApp
###
angular.module('dndApp').controller 'CharacternewCtrl',
  (
    $q
    $scope
    $state
    Race
    Klass
    AbilityScore

    Character
  ) ->
    promises = []

    promises.push(Klass.all().getList())
    promises.push(Race.all().getList())
    $q.all(promises).then (res) ->
      vm.klasses = res[0]
      vm.races = res[1]

    submit = ->
      vm.character.base_ability_score.id = vm.base_ability_score_id
      # AbilityScore.one(vm.base_ability_score/)
      vm.character.save().then (res) ->
        vm.character = res
        console.log vm.character.plain()

    setKlass = (klass) ->
      vm.character.primary_class = _.find vm.klasses, ({id: klass.id})

    setRace = (race) ->
      vm.character.race = _.find vm.races, ({id: race.id})

    createBaseCharacter = ->
      return if vm.character.fromServer
      Character.rang(vm.character).post().then (res) ->
        console.log res.plain()
        vm.character = res
        vm.base_ability_score_id = angular.copy(res.id)
        delete vm.character.base_ability_score.id
        vm.att_keys = Object.keys(vm.character.base_ability_score)
    vm =
      submit: submit
      createBaseCharacter: createBaseCharacter
      new_character: {}
      att_keys: []
      setKlass: setKlass
      setRace: setRace
      character: {fromServer: false}

    $scope.vm = vm