###################################################
# 召喚音爆
# 
# Name   : create_sonic_boom.mcfunction
# Path   : morph:warden/skill/1/
# As     : 召喚出的音爆
# At     : 使用技能的玩家的眼前
# Loop   : 否
# Author : Alex_Cai
###################################################

#和玩家看向同個方向
rotate @s ~ ~

scoreboard players operation @s uuid0_match = #warden uuid0
scoreboard players set @s morph_skill_1 0
tag @s add sonic_boom