###################################################
# 怪物回血
# 
# Name   : health.mcfunction
# Path   : morph:evoker/skill/1/
# As     : 要回血的怪物
# At     : 使用技能的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

#根據是否為不死生物 給予立即傷害或回復
execute if entity @s[type=#undead] run return run effect give @s instant_damage 1 0 true

effect give @s regeneration 10 0 true