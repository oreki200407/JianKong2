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
execute if entity @e[type=armor_stand, tag=box_off] run tag @s add box_off

#刪除舊的
execute as @e[type=armor_stand, tag=box] at @s run function box:switch/remove_box

#放上新的
function box:switch/set

tellraw @a ["◎ 電箱已被更換至", {"selector": "@s", color:gold}]