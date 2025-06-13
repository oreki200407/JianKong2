title @a title {"text":"早上來臨","bold":true,"color":"gold"}
effect give @a[team=!spec] resistance 3 100 true

schedule clear contain:give
schedule clear control:acid_rain/start
schedule clear control:acid_rain/end
schedule clear control:sprint/start
schedule clear control:sprint/end
schedule clear control:poison/start
schedule clear control:poison/end
schedule clear game:time
schedule clear summon:natural
schedule clear monster:boss/warden/tick
schedule clear monster:boss/warden/tick
schedule clear monster:boss/creeper/tick
schedule clear monster:boss/creeper/tick

execute unless score #switch system matches 1 run return run schedule function game:switch 3s
schedule function game:end 3s