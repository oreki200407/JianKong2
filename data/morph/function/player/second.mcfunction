###################################################
# 人體變形的秒
# 
# Name   : second.mcfunction
# Path   : morph:player/
# As     : 變形的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

effect give @s[scores={food=..7}] saturation 1 0 true
effect give @s[scores={food=14..}] hunger 1 255 true

title @s actionbar [{text: "變型時間：", color: "gold", bold: true}, {score: {name: "@s", objective: "morph"}}, "秒"]
scoreboard players remove @s morph 1
execute if score @s morph matches 0 at @s run function morph:player/end with entity @s equipment.head.components."minecraft:custom_data"