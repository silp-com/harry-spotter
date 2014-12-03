# Description:
#   Posts a gif on git push force

module.exports = (robot) ->

  robot.hear /force-pushed/i, (msg) ->   
    gifs = [
      'http://i.imgur.com/R7tEQPA.gif', # plow
      'http://i.imgur.com/2A3ihEW.gif', # guitar girls
      'http://media0.giphy.com/media/UP50mzg4TEydy/giphy.gif', # stripper       
      'http://media.giphy.com/media/imBrYOiS14PLy/giphy.gif', # wet road
      'https://38.media.tumblr.com/524ec08a30e224d65258ec7a9c3aa80c/tumblr_ncxmzf5Abc1tmnd5po1_500.gif', # unstoppable bus
      'http://i.imgur.com/WwBxYiK.gif' # hamster
    ]
    msg.send msg.random gifs
