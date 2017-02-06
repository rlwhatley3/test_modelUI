'use strict'

###*
 # @ngdoc service
 # @name dndApp.abilityScore
 # @description
 # # abilityScore
 # Factory in the dndApp.
###
angular.module 'dndApp'
  .factory 'AbilityScore', (Restangular)->
    svc = {
      all: () ->
        Restangular.all('ability_score')
    , one: (id) ->
        Restangular.one('ability_score', id)
    , rang: (obj) ->
        Restangular.restangularizeElement(null, obj,'ability_score')
    }
    return svc

