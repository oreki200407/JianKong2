###################################################
# 監控者與終界箱
# 
# Name   : root.mcfunction
# Path   : summon:
# As     : 監控者
# At     : 世界重生點
# Loop   : 是
# Author :  oreki20, Alex_Cai
###################################################

execute if score @s open_ender_chest matches 1.. run function summon:open_ender_chest

execute if items entity @s enderchest.1 air run data modify storage jk2:data root.summon.head set value 1
execute if items entity @s enderchest.2 air run data modify storage jk2:data root.summon.head set value 2
execute if items entity @s enderchest.3 air run data modify storage jk2:data root.summon.head set value 3
execute if items entity @s enderchest.4 air run data modify storage jk2:data root.summon.head set value 4
execute if items entity @s enderchest.5 air run data modify storage jk2:data root.summon.head set value 5
execute if items entity @s enderchest.6 air run data modify storage jk2:data root.summon.head set value 6
execute if items entity @s enderchest.7 air run data modify storage jk2:data root.summon.head set value 7
execute at @s if data storage jk2:data root.summon.head run function summon:select with storage jk2:data root.summon