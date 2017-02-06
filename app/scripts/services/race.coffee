'use strict'

###*
 # @ngdoc service
 # @name dndApp.race
 # @description
 # # race
 # Factory in the dndApp.
###
angular.module('dndApp').factory 'Race',
(
  Restangular
) ->

    svc = {
      all: () ->
        Restangular.all('race')
    , one: (id) ->
        Restangular.one('race', id)
    , rang: (obj) ->
        Restangular.restangularizeElement(null, obj,'race')
    }
    return svc
