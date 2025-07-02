###################################################
# 使用烈焰使者的第一個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:blaze/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#計算向量
function morph:player/motion_vector/root

#召喚火焰彈
execute anchored eyes positioned ^ ^ ^1 run function morph:blaze/skill/1/fireball with storage jk2:data root.morph.motion