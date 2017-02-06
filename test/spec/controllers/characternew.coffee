'use strict'

describe 'Controller: CharacternewCtrl', ->

  # load the controller's module
  beforeEach module 'dndApp'

  CharacternewCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CharacternewCtrl = $controller 'CharacternewCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
