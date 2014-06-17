# Description:
#   Tells hubot to make screenshots of a website.
#
# Dependencies:
#   pageres
#
# Configuration:
#   None
#
# Commands:
#   hubot screenshot me https://hubot.github.com/

Pageres = require 'pageres'

module.exports = (robot) ->
  robot.respond /screenshot me (https?:\/\/.+)/i, (msg) ->
    new Pageres().src(msg.match[1], ['1280x720']).dest(__dirname).run (error) ->
      if error
        msg.reply 'Sorry, something went wrong!'
      else
        msg.reply msg.match[1] + ' done!'
