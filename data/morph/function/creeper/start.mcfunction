###################################################
# 變形成苦力怕
# 
# Name   : start.mcfunction
# Path   : morph:player/creeper/
# As     : 變形的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_item", item: "creeper_head"}
tellraw @s [{"text": "你變成了"}, {"translate": "entity.minecraft.creeper"}]