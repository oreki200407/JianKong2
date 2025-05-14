###################################################
# 編輯模式
# 
# Name   : edit.mcfunction
# Path   : tick:
# As     : 世界重生點
# At     : As
# Loop   : 是
# Author : oreki20
###################################################

execute as @a[scores={death=1}] at @s if entity @e[type=marker, tag=lobby, distance=..0.1] run function system:death
execute as @a at @s[y=-120,dy=50] run tp @s @e[type=marker, tag=lobby, limit=1]

#沒有告示牌就重新放
execute as @e[type=armor_stand,tag=box_point] at @s unless block ~ ~1 ~ oak_sign run function edit:box_point/enter


execute as @e[type=interaction,tag=edit_give] on target run function edit:give
execute as @e[type=interaction,tag=edit_check] on target run function edit:check
execute as @e[type=interaction,tag=edit_exit] on target at @e[tag=control_panel] run function edit:exit
execute as @e[type=interaction] if data entity @s interaction run data remove entity @s interaction