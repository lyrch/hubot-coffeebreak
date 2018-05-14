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
        ['hubot', 'alice is needs coffee who else is feeling caffine withdawl?']
      ]

  it 'notifies a room where a coffee break is being held', ->
    @room.user.say('alice', '/me having a coffee break in https://meetingroom.com/123456').then =>
      expect(@room.messages.to.eql) [
        ['alice', '/me having a coffee break in https://meetingroom.com/123456']
        ['hubot', 'A coffee break is starting in https://meetingroom.com/123456. Join in!']
      ]

  it 'notifies a room when a coffee break is over', ->
    @room.user.say('alice', '/me having a coffee break in https://meetingroom.com/123456').then =>
      expect(@room.messages.to.eql) [
        ['alice', '/me having a coffee break in https://meetingroom.com/123456']
        ['hubot', 'A coffee break is starting in https://meetingroom.com/123456. Join in!']
        ['hubot', 'Alright alice coffee time is over!']
      ]
