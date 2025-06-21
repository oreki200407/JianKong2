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

execute unless entity @e[tag=edit_setting] at @e[tag=control_panel] run function edit:enter

execute as @a[scores={death=1}] at @s if entity @e[type=marker, tag=lobby_spawn, distance=..0.1] run function system:death
execute as @a at @s[y=-120,dy=50] run tp @s @e[type=marker, tag=lobby_spawn, limit=1]

#刪除盔甲座
execute as @e[tag=edit] if items entity @s armor.head *[custom_data~{delete: true}] run kill

#超過兩個重生點
execute store result score #spawn system if entity @e[tag=spawn_survivor]
execute if score #spawn system matches 2.. run function edit:spawn

#沒有告示牌就重新放
execute as @e[type=armor_stand,tag=box_point] at @s unless block ~ ~1 ~ oak_sign run setblock ~ ~1 ~ oak_sign{back_text:{messages:["","↑↑↑↑","請在第一行","輸入電箱名稱"]},front_text:{messages:["","↑↑↑↑","請在第一行","輸入電箱名稱"]}}
execute as @e[type=armor_stand,tag=poison_a] at @s run function edit:poison/a
execute as @e[type=armor_stand,tag=poison_b] at @s run function edit:poison/b
execute as @e[type=armor_stand,tag=poison_point] at @s unless block ~ ~1 ~ oak_sign run setblock ~ ~1 ~ oak_sign{back_text:{messages:["","↑↑↑↑","請在第一行","輸入毒氣點名稱"]},front_text:{messages:["","↑↑↑↑","請在第一行","輸入毒氣點名稱"]}}
execute as @e[type=interaction,tag=edit_give] on target run function edit:give
execute as @e[type=interaction,tag=edit_check] on target run function edit:check
execute as @e[type=interaction,tag=edit_exit] on target at @e[tag=control_panel] run function edit:exit
execute as @e[type=interaction] if data entity @s interaction run data remove entity @s interaction