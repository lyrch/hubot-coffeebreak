# Description
#   A script for automating coffeebreaks with friends
#
# Configuration:
#   COFFEE_BREAK_DURATION
#   COFFEE_BREAK_PARTICIPANTS
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Jared Wilkerson <wilkerson.jared@gmail.com>

breakDuration = process.env.COFFEE_BREAK_DURATION

module.exports = (robot) ->
  robot.hear /needs coffee/, (res) ->
    caffineAddict = res.envelope.user.name
    res.send "#{caffineAddict} is needs coffee who else is feeling caffine withdawl?"

  robot.hear /coffee break over here (.*)/, (res) ->
    caffineAddict = res.envelope.user.name
    coffeeShop = res.match[1]
    res.send "Hey everyone, there's a coffee break in #{coffeeShop}. Join in!"
    res.send "Alright #{caffineAddict} coffee time is over!"
    setInterval () ->
      res.send "Alright #{caffineAddict} coffee time is over!"
    , breakDuration
