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

module.exports = (robot) ->
  robot.hear /needs coffee/, (res) ->
    caffineAddict = res.envelope.user.name
    res.send "#{caffineAddict} is needs coffee who else is feeling caffine withdawl?"
