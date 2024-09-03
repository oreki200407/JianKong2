###################################################
# 變形成殭屍開始
# 
# Name   : start.mcfunction
# Path   : morph:zombie/
# As     : 變形成殭屍的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_item", item: "zombie_head"}
tellraw @s [{"text": "你變成了"}, {"translate": "entity.minecraft.zombie"}]