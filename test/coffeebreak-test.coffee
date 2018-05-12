Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/coffeebreak.coffee')

describe 'coffeebreak', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'notifies a room that a coffee break is being scheduled', ->
    @room.user.say('alice', '/me needs coffee').then =>
      expect(@room.messages).to.eql [
        ['alice', '/me needs coffee']
        ['hubot', 'alice is scheduling a coffee break who is in?']
      ]
