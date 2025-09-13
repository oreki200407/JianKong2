###################################################
# 使用喚魔者的第一個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:evoker/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#給予6格內怪物回血
execute as @e[tag=monster, team=monitor, distance=..6] run function morph:evoker/skill/1/health