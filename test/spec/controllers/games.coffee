'use strict'

describe 'Controller: GamesCtrl', ->

  # load the controller's module
  beforeEach module 'dndApp'

  GamesCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    GamesCtrl = $controller 'GamesCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
