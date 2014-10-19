# Description:
#   Posts a gif on git push force

module.exports = (robot) ->

  robot.respond /force-pushed/i, (msg) ->   
    gifs = [
      'http://i.imgur.com/R7tEQPA.gif', # plow
      'http://imgur.com/2A3ihEW', # guitar girls
      'http://media0.giphy.com/media/UP50mzg4TEydy/giphy.gif', # stripper       
      'http://media.giphy.com/media/imBrYOiS14PLy/giphy.gif', # wet road
      
    ]
    msg.send msg.random gifs