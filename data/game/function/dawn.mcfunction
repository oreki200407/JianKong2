title @a title {"text":"早上來臨","bold":true,"color":"gold"}
effect give @a[team=!spec] resistance 3 100 true

execute unless score #switch system matches 1 run return run schedule function game:switch 3s
schedule function game:end 3s