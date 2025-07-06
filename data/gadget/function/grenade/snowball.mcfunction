###################################################
# 檢測雪球
# 
# Name   : snowball.mcfunction
# Path   : gadget:grenade/
# As     : 雪球
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s add checked

execute unless data entity @s Item.components."minecraft:custom_model_data"{strings: ["bomb"]} run return fail

tag @s add temp
execute at @s summon marker run function gadget:grenade/summon_marker
tag @s remove temp