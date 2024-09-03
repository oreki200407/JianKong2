###################################################
# 根據頭上戴著的頭顱nbt決定要執行哪個怪物的技能二
# 
# Name   : run.mcfunction
# Path   : morph:player/use_skill_2/
# As     : 使用技能二的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

$function morph:$(monster)/use_skill_2
#冷卻
$scoreboard players set @s morph_skill_2 $(skill_2)