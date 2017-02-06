'use strict'

###*
 # @ngdoc service
 # @name dndApp.Character
 # @description
 # # Character
 # Service in the dndApp.
###
angular.module 'dndApp'
  .factory 'Character', (Restangular) ->
    svc = {
      all: () ->
        Restangular.all('character')
    , one: (id) ->
        Restangular.one('character', id)
    , rang: (obj) ->
        Restangular.restangularizeElement(null, obj,'character')
    }
    return svc


# angular.module 'dndApp'
#   .factory 'Character', (Restangular)->

#   svc = 
#     all: () ->
#       Restangular.all('characters')
#     one: (id) ->
#       Restangular.one('characters', id)
#     rang: (obj) ->
#       Restangular.restangularizeElement(null, obj, 'characters')
#   return svc