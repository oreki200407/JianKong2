###################################################
# 更改難易度
# 
# Name   : root.mcfunction
# Path   : system:difficulty/
# As     : 管理員
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

execute if entity @s[gamemode=!creative] run return run tellraw @s ["◎ 請切換", {translate: "gameMode.creative", "color":"gold"}, "來操作"]

$difficulty $(difficulty)
execute store result score #difficulty morph run difficulty

#設定好選擇的互動實體
tag @e[tag=selected_difficulty, type=interaction, limit=1] remove selected_difficulty
$tag @e[tag=setting_$(difficulty), type=interaction, limit=1] add selected_difficulty

execute as @e[tag=difficulty_setting, type=interaction] run function system:difficulty/place_light