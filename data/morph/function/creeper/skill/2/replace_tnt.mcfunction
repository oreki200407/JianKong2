###################################################
# 替換TNT
# 
# Name   : replace_tnt.mcfunction
# Path   : morph:creeper/skill/2/
# As     : 苦力怕丟出的TNT
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#苦力怕TNT
execute as @e[type=tnt, tag=morph_tnt] at @s run function morph:creeper/skill/2/tnt_explode