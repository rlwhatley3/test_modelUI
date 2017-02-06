'use strict'

describe 'Service: abilityScore', ->

  # load the service's module
  beforeEach module 'dndApp'

  # instantiate service
  abilityScore = {}
  beforeEach inject (_abilityScore_) ->
    abilityScore = _abilityScore_

  it 'should do something', ->
    expect(!!abilityScore).toBe true
