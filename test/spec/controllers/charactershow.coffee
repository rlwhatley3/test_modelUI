'use strict'

describe 'Controller: CharactershowCtrl', ->

  # load the controller's module
  beforeEach module 'dndApp'

  CharactershowCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CharactershowCtrl = $controller 'CharactershowCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
