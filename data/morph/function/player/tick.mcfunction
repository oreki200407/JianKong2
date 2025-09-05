###################################################
# 人體變形的刻
# 
# Name   : tick.mcfunction
# Path   : morph:player/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#執行怪物的tick函數
$function morph:$(monster)/tick

#技能冷卻
scoreboard players remove @s[scores={morph_skill_1=0..}] morph_skill_1 1
$execute if score @s morph_skill_1 matches 0 run function morph:$(monster)/skill/give_1

scoreboard players remove @s[scores={morph_skill_2=0..}] morph_skill_2 1
$execute if score @s morph_skill_2 matches 0 run function morph:$(monster)/skill/give_2