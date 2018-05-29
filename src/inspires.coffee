# Description:
#   Pugme is the most important thing in life
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
    msg.http("http://inspirobot.me/api?generate=true")
      .get() (err, res, body) ->
        msg.send body
