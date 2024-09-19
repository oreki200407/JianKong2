###################################################
# 使用苦力怕的第二個技能
# 
# Name   : use_2.mcfunction
# Path   : morph:creeper/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#計算向量
function morph:player/motion_vector/root

#如果直接execute summon tnt 會看不到
execute anchored eyes positioned ^ ^ ^1 run function morph:creeper/skill/2/tnt with storage jk2:data root.morph.motion