###################################################
# 變形成殭屍
# 
# Name   : start.mcfunction
# Path   : morph:player/zombie/
# As     : 變形的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_item", item: "zombie_head"}
tellraw @s [{"text": "你變成了"}, {"translate": "entity.minecraft.zombie"}]