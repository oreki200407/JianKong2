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

playsound ui.button.click ambient @s
execute if entity @s[gamemode=!creative] run return run tellraw @a ["◎ 請切換", {"text": "創造模式", "color":"gold"}, "來操作"]

$difficulty $(difficulty)

#設定好選擇的互動實體
tag @e[type=item_display, tag=selected_difficulty] remove selected_difficulty
$tag @e[type=item_display, tag=setting_$(difficulty)] add selected_difficulty
execute as @e[type=interaction, tag=difficulty_setting] on vehicle run function system:difficulty/place_light