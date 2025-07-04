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

function box:switch/set

#刪除舊的
execute as @e[type=armor_stand, tag=box] at @s run function box:switch/remove_box

tag @s add box
tellraw @a ["◎ 電箱已被更換至", {"selector": "@s", color:gold}]
scoreboard players display numberformat 電箱位置 info_survivor fixed {"selector": "@s"}