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
execute store result score #availables morph store result storage jk2:data root.morph.player.availables int 1 run data get storage jk2:data root.morph.monsters

#沒有可變怪物時失敗
execute if score #availables morph matches 0 run return run tellraw @s "目前沒有可變怪物！"

#隨機選擇
execute store result storage jk2:data root.morph.player.index int 1 run function morph:player/start/random with storage jk2:data root.morph.player
data modify storage jk2:data root.morph.player.uuid set from entity @s UUID

function morph:player/start/choose with storage jk2:data root.morph.player
function morph:player/start/to with storage jk2:data root.morph.player

#變形維持180秒 = 3600刻
scoreboard players set @s morph 3600
tag @s add morph