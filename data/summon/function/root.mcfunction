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
execute if items entity @e[type=item, distance=..1.5] contents #summon:clear run function summon:kill_item

execute if score @s open_ender_chest matches 1.. run function summon:open_ender_chest

execute store success score @s summon_operate run clear @s white_stained_glass_pane
execute as @a[scores={summon_operate=1}] run return run function summon:reset

execute store success score @s summon_operate run clear @s player_head[custom_data~{type:"operation"}] 0
execute as @a[scores={summon_operate=1}] run return run function summon:head/select

execute store success score @s summon_operate run clear @s glowstone_dust 0
execute as @a[scores={summon_operate=1}] run return run function summon:operation/select