###################################################
# 監控者與終界箱
# 
# Name   : root.mcfunction
# Path   : summon:
# As     : 監控者
# At     : 世界重生點
# Loop   : 是
# Author : oreki20, Alex_Cai
###################################################

execute as @e[type=item, distance=..1.5] if items entity @s contents player_head run kill
execute as @e[type=item, distance=..1.5] if items entity @s contents white_stained_glass_pane run kill

execute if score @s open_ender_chest matches 1.. run function summon:open_ender_chest

execute store result score @s summon_choose run clear @s player_head
execute as @a[scores={summon_choose=1..}] at @s run function summon:choose