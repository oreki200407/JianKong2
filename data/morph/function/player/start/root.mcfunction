###################################################
# 開始人體變形
# 
# Name   : root.mcfunction
# Path   : morph:player/start/
# As     : 變形的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tp @s ~ ~ ~-1

execute unless score 電力 info_monitor matches 50.. run return run tellraw @s ["◎ 電力不足, 無法使用", {"text": "人體變型", "color":"gold"}]

#execute store出monsters的長度
execute store result score #availables morph store result storage jk2:data root.morph.availables int 1 run data get storage jk2:data root.morph.monsters

#沒有可變怪物時失敗
execute if score #availables morph matches 0 run return run tellraw @s ["◎ 目前沒有", {"text": "可變的怪物","color":"gold"}]

#隨機選擇
execute store result storage jk2:data root.morph.index int 1 run function morph:player/start/random with storage jk2:data root.morph

#用來儲存變形怪物用的頭顱 以及裝飾用
item replace entity @s armor.head with player_head[enchantments={binding_curse: 1}]
function morph:player/start/choose with storage jk2:data root.morph
function morph:player/start/to with entity @s equipment.head.components."minecraft:custom_data"

#變形維持180秒 = 3600刻
scoreboard players set @s morph 3600

clear @s
scoreboard players remove 電力 info_monitor 50
tp @s @e[type=marker,tag=point,sort=random,limit=1]
tellraw @s [{"text": "你變成了"}, {"entity":"@s","nbt":"equipment.head.components.\"minecraft:item_name\"","interpret":true}]
title @s title {"entity":"@s","nbt":"equipment.head.components.\"minecraft:item_name\"","interpret":true,bold:true}