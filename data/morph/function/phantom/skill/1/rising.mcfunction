###################################################
# 正在上升中
# 
# Name   : rising.mcfunction
# Path   : morph:phantom/skill/1/
# As     : 變形成夜魅的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

scoreboard players remove #phantom morph_skill_1 1

execute if score #phantom morph_skill_1 matches 0 run attribute @s gravity modifier remove jk2:phantom