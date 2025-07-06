###################################################
# 人體變形結束
# 
# Name   : end.mcfunction
# Path   : morph:player/
# As     : 變形的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

$function morph:$(monster)/end

scoreboard players reset @s morph
scoreboard players reset @s morph_skill_1
scoreboard players reset @s morph_skill_2
scoreboard players reset @s morph_skill_2_duration

#將怪物歸還給可供變形的怪物陣列
$data modify storage jk2:data root.morph.monsters append value "$(monster)"

clear @s *[custom_data={skill: 1b}]
clear @s *[custom_data={skill: 2b}]
function monitor:observe/give
title @s actionbar ""