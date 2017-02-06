'use strict'

###*
 # @ngdoc function
 # @name dndApp.controller:CharacterslistCtrl
 # @description
 # # CharacterslistCtrl
 # Controller of the dndApp
###
angular.module('dndApp').controller 'CharacterslistCtrl',
	(
		$q
		$scope
		$state
		NgTableParams
		Character
	) ->

		$q.all([]).then (res) ->
			vm.table_params = new NgTableParams({
				page: 1
				count: 10 	
			}, {
				getData: (params) ->
					Character.all().getList().then (res) ->
						console.log res.plain()
						vm.awesomeThings = res
			})

		deleteCharacter = (char) ->
			char.remove().then (res) ->
				vm.table_params.reload()

		goTo = (char) ->
			$state.go('characters.show', id: char.id)

		updateCharacter = (char) ->
			char.save().then (res) ->
				# vm.table_params.reload()

		vm = 
			table_params: {}
			deleteCharacter: deleteCharacter
			goTo: goTo
			updateCharacter: updateCharacter
		$scope.vm = vm
