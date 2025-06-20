###################################################
# 玩家被救起來時執行
# 
# Name   : saved.mcfunction
# Path   : game:death/survivor/save/
# As     : 被救起來的玩家
# At     : 代表倒地玩家的展示實體
# Loop   : 否
# Author : Alex_Cai
###################################################

tp @s ~ ~-0.5 ~ ~ ~
gamemode adventure @s
effect give @s resistance 10 100 true
title @s title {text: "你已被救起", color: "red", bold: true}
tellraw @a ["◎ ", {selector: "@s"}, " 已被救起"]
tag @s remove fall_down
scoreboard players reset @s death_time
playsound entity.experience_orb.pickup ambient @s

#有骨折的玩家救起來後繼續骨折
execute if entity @s[tag=fractured] run attribute @s movement_speed modifier add jk2:fracture -0.3 add_multiplied_total