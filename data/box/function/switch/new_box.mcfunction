###################################################
# 新的電箱
# 
# Name   : new_box.mcfunction
# Path   : box:switch/
# As     : 新的電箱點位盔甲座
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

#上鎖的電箱繼續上鎖
execute if entity @e[tag=box_off, type=armor_stand, limit=1] run tag @s add box_off

#刪除舊的
execute as @e[tag=box, type=armor_stand] at @s run function box:switch/remove_box

#放上新的
function box:switch/set

tellraw @a ["◎ 電箱已被更換至", {"selector": "@s", color:gold}]

execute as @a[team=survivor] if items entity @s enderchest.10 * run function box:switch/give with entity @s EnderItems[{Slot: 10b}]