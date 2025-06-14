title @a title {"text":"遊戲結束","bold":true,"color":"green"}

kill @e[tag=monitor_marker]
execute at @e[type=marker,tag=lobby] run place template game:lobby ~-10 ~-1 ~-10

schedule function game:total 1