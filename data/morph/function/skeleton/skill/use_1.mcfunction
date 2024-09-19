###################################################
# 使用骷髏的第一個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:skeleton/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#計算向量
function morph:player/motion_vector/root

#如果直接execute summon tnt 會看不到
execute anchored eyes positioned ^ ^ ^1 run function morph:skeleton/skill/1/arrow with storage jk2:data root.morph.motion