'use strict'

describe 'Service: Klass', ->

  # load the service's module
  beforeEach module 'dndApp'

  # instantiate service
  Klass = {}
  beforeEach inject (_Klass_) ->
    Klass = _Klass_

  it 'should do something', ->
    expect(!!Klass).toBe true
