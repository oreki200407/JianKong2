###################################################
# 開始人體變形
# 
# Name   : root.mcfunction
# Path   : morph:player/start/
# As     : 變形的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#execute store出monsters的長度
execute store result score #availables morph store result storage jk2:data root.morph.availables int 1 run data get storage jk2:data root.morph.monsters

#沒有可變怪物時失敗
execute if score #availables morph matches 0 run return run tellraw @s "目前沒有可變怪物！"

#隨機選擇
execute store result storage jk2:data root.morph.index int 1 run function morph:player/start/random with storage jk2:data root.morph

#用來儲存變形怪物用的頭顱 以及裝飾用
item replace entity @s armor.head with player_head[enchantments={binding_curse: 1}]
function morph:player/start/choose with storage jk2:data root.morph
function morph:player/start/to with entity @s ArmorItems[3].components."minecraft:custom_data"

#變形維持180秒 = 3600刻
scoreboard players set @s morph 3600
tag @s add morph