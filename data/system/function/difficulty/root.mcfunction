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

#設定好選擇的互動實體
tag @e[type=interaction, tag=selected_difficulty] remove selected_difficulty
$tag @e[type=interaction, tag=setting_$(difficulty)] add selected_difficulty

execute as @e[type=interaction, tag=difficulty_setting] run function system:difficulty/place_light