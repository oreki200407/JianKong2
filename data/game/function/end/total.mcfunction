scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar end
tp @a @e[type=marker, tag=lobby_spawn, limit=1]
gamemode adventure @a
scoreboard players set #mode system 2
execute at @e[type=marker, tag=lobby_spawn, limit=1] run spawnpoint @s ~ ~ ~

effect clear @a
effect give @s resistance infinite 4 true
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
effect give @s weakness infinite 99 true

execute if score §c紅隊 end > §9藍隊 end run return run title @a title {"text":"紅隊獲勝","bold":true,"color":"red"}
execute if score §c紅隊 end < §9藍隊 end run return run title @a title {"text":"藍隊獲勝","bold":true,"color":"blue"}
title @a title {"text":"平手","bold":true,"color":"gold"}