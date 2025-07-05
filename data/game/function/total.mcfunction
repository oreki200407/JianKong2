scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar end
tp @a @e[type=marker, tag=lobby_spawn, limit=1]

execute if score 紅隊 end > 藍隊 end run return run title @a title {"text":"紅隊獲勝","bold":true,"color":"red"}
execute if score 紅隊 end < 藍隊 end run return run title @a title {"text":"藍隊獲勝","bold":true,"color":"blue"}
title @a title {"text":"平手","bold":true,"color":"gold"}