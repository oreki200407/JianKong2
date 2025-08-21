title @a title {"text":"遊戲結束","bold":true,"color":"green"}

execute at @e[type=marker, tag=power] run setblock ~ ~ ~ air
execute at @e[type=marker, tag=power] run setblock ~1 ~ ~ air

kill @e[tag=monitor_marker]
kill @e[tag=contain]
kill @e[tag=contain_escape]
kill @e[tag=monster_ride]
kill @e[tag=monster_being_ride]
kill @e[team=monitor, tag=monster, type=!player]
kill @e[type=block_display, tag=morph_grass_block]

execute at @e[type=marker,tag=lobby,limit=1] run place template game:lobby ~-10 ~-1 ~-10

#計算
execute as @a[team=!spec] run function game:end/score
scoreboard players operation §c紅隊 end += @a[team=survivor] score
scoreboard players operation §9藍隊 end += @a[team=monitor] score

schedule function game:end/total 1