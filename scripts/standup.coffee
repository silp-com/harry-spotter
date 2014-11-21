# Description:
#   Tell everyone the day

cronJob = require('cron').CronJob
         
module.exports = (robot) ->  
  standup = new Standup(robot)      
    
class Standup

  constructor: (robot) ->
    @robot = robot  
    
    @cronjob = new cronJob('27 9 * * 1-5', @send_message)
    @cronjob.start()           
         
  send_message: => 
    @robot.send(room: 'Dev', "Rise and shine, standup time! Reminder: today is #{@current_day()}.")
  
  current_day: ->                         
    now = new Date();
    weekday = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
    weekday[now.getDay()]