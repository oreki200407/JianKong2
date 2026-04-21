title @a title {"text":"遊戲結束","bold":true,"color":"green"}

execute at @e[tag=power, type=marker] run setblock ~ ~ ~ air
execute at @e[tag=power, type=marker] run setblock ~1 ~ ~ air

kill @e[tag=contain]
kill @e[tag=contain_escape]
kill @e[tag=monitor_marker]

execute at @e[tag=lobby,type=marker,limit=1] run place template game:lobby ~-10 ~-1 ~-10

#計算
execute as @a[team=!spec] run function game:end/score
scoreboard players operation §c紅隊 end += @a[team=survivor] score
scoreboard players operation §9藍隊 end += @a[team=monitor] score

schedule function game:end/total 1