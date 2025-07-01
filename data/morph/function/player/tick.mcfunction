###################################################
# 人體變形
# 
# Name   : tick.mcfunction
# Path   : morph:player/
# As     : 變形的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

$execute if score @s morph matches 0 run return run function morph:player/end {monster: $(monster)}

#執行怪物的tick函數
$function morph:$(monster)/tick

#技能冷卻
scoreboard players remove @s[scores={morph_skill_1=1..}] morph_skill_1 1
$execute if score @s morph_skill_1 matches 0 run function morph:$(monster)/skill/give_1
scoreboard players remove @s[scores={morph_skill_2=1..}] morph_skill_2 1
$execute if score @s morph_skill_2 matches 0 run function morph:$(monster)/skill/give_2

effect give @s[scores={food=..7}] saturation 1 0 true

title @s actionbar [{text: "變型時間：", "color": "gold", "bold": true}, {score: {name: "@s", objective: "morph"}}, "秒"]