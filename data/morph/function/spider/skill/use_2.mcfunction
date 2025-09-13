###################################################
# 使用蜘蛛的第二個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:spider/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#看到生存者就放蜘蛛網
execute anchored eyes positioned ^ ^ ^5 at @a[team=survivor, distance=..5, gamemode=adventure] run function morph:spider/skill/2/cobweb