'use strict'

describe 'Service: Character', ->

  # load the service's module
  beforeEach module 'dndApp'

  # instantiate service
  Character = {}
  beforeEach inject (_Character_) ->
    Character = _Character_

  it 'should do something', ->
    expect(!!Character).toBe true
