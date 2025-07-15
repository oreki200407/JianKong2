###################################################
# 監控者與終界箱
# 
# Name   : root.mcfunction
# Path   : summon:
# As     : 監控者
# At     : 監控者
# Loop   : 是
# Author : oreki20, Alex_Cai
###################################################

#清除丟出來的物品
execute if items entity @e[type=item, distance=..1.5] contents glowstone_dust run function summon:kill_item
execute if items entity @e[type=item, distance=..1.5] contents player_head[custom_data~{type:"operation"}] run function summon:kill_item

#開終界箱
execute if score @s open_ender_chest matches 1.. run function summon:open_ender_chest

execute unless score @s summon_monster matches 1..7 if items entity @s enderchest.18 glowstone_dust[item_model=lime_dye] run function summon:reset

execute store success score @s summon_operate run clear @s player_head[custom_data~{type:"operation"}] 0
execute as @s[scores={summon_operate=1}] run return run function summon:head/select

execute store success score @s summon_operate run clear @s glowstone_dust 0
execute as @s[scores={summon_operate=1}] run return run function summon:operation/select