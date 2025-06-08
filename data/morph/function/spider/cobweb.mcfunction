###################################################
# 蜘蛛網可以維持4秒
# 
# Name   : cobweb.mcfunction
# Path   : morph:spider/
# As     : 蜘蛛放的蜘蛛網
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#維持4秒
execute unless predicate {condition: "entity_properties", entity: "this", predicate: {"nbt": "{PortalCooldown:0}"}} run return fail

#清除蜘蛛網
execute at @s if block ~ ~ ~ cobweb run setblock ~ ~ ~ air
kill