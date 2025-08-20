###################################################
# 減少監視器數量
# 
# Name   : subtract.mcfunction
# Path   : system:camera_count/
# As     : 互動實體
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

execute if entity @s[gamemode=!creative] run return run tellraw @s ["◎ 請切換", {translate: "gameMode.creative", color: "gold"}, "來操作"]

scoreboard players remove 監視器 lobby 1
execute if score 監視器 lobby matches ..2 run scoreboard players set 監視器 lobby 3
data modify entity @e[type=text_display, tag=camera_setting, limit=1] text.extra[0] set value {score: {name: "監視器", objective: "lobby"}}