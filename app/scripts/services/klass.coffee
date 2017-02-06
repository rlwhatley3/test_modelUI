'use strict'

###*
 # @ngdoc service
 # @name dndApp.Klass
 # @description
 # # Klass
 # Service in the dndApp.
###
angular.module 'dndApp'
  .factory 'Klass', (Restangular) ->
    svc = {
      all: () ->
        Restangular.all('klass')
    , one: (id) ->
        Restangular.one('klass', id)
    , rang: (obj) ->
        Restangular.restangularizeElement(null, obj,'klass')
    }
    return svc