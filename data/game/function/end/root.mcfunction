title @a title {"text":"遊戲結束","bold":true,"color":"green"}

kill @e[tag=monitor_marker]
kill @e[tag=contain]
execute at @e[type=marker,tag=lobby,limit=1] run place template game:lobby ~-10 ~-1 ~-10

#計算
execute as @a[team=!spec] run function game:end/score
scoreboard players operation §c紅隊 end += @a[team=survivor] score
scoreboard players operation §9藍隊 end += @a[team=monitor] score

schedule function game:end/total 1