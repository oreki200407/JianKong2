###################################################
# 根據頭上戴著的頭顱nbt決定要執行哪個怪物的技能一
# 
# Name   : run.mcfunction
# Path   : morph:player/use_skill_1/
# As     : 使用技能一的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

$function morph:$(monster)/use_skill_1
#冷卻
$scoreboard players set @s morph_skill_1 $(skill_1)