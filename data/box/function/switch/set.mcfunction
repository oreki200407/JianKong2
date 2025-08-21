###################################################
# 放置電箱
# 
# Name   : set.mcfunction
# Path   : box:switch/
# As     : 電箱點位盔甲座
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

#更換電箱
setblock ~ ~ ~ dispenser[facing=down]{CustomName:"電箱"}
setblock ~ ~1 ~ ender_chest

#填充內容物
function box:use/reset

#上鎖
execute if entity @s[tag=box_off] run function box:use/box_off

tag @s add box
scoreboard players display numberformat 電箱位置 info_survivor fixed {selector: "@s"}