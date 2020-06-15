# Description:
#   Hubot Inspire is inspirational
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot inspire me - Receive an inspirational quote

module.exports = (robot) ->

  robot.respond /inspire me/i, (msg) ->
    msg.http("https://inspirobot.me/api?generate=true")
      .get() (err, res, body) ->
        msg.send body
