###################################################
# 疊代根號
# 
# Name   : iteration.mcfunction
# Path   : morph:warden/distance/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

scoreboard players operation #temp morph = #squared morph
scoreboard players operation #temp morph /= #distance morph
scoreboard players operation #distance morph += #temp morph
scoreboard players operation #distance morph /= #2 constant