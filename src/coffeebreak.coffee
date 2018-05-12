# Description
#   A script for automating coffeebreaks with friends
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
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
    res.send "#{caffineAddict} is scheduling a coffee break who is in?"
