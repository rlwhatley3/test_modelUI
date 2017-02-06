'use strict'

describe 'Service: race', ->

  # load the service's module
  beforeEach module 'dndApp'

  # instantiate service
  race = {}
  beforeEach inject (_race_) ->
    race = _race_

  it 'should do something', ->
    expect(!!race).toBe true
