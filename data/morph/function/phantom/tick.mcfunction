###################################################
# 身為夜魅的tick
# 
# Name   : tick.mcfunction
# Path   : morph:phantom/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#正在上升中
execute if score #phantom morph_skill_1 matches 0.. run return run function morph:phantom/skill/1/rising

#飛到了 開始偵測鞘翅
execute if items entity @s armor.chest elytra run function morph:phantom/skill/1/wearing