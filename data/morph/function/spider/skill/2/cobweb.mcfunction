###################################################
# 召喚蜘蛛網
# 
# Name   : cobweb.mcfunction
# Path   : morph:spider/skill/2/
# As     : 使用技能的玩家
# At     : 眼前的求生者
# Loop   : 否
# Author : Alex_Cai
###################################################

setblock ~ ~ ~ cobweb keep
summon marker ~ ~ ~ {Tags: ["spider_cobweb", "morph_product"]}