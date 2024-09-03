###################################################
# 變形成苦力怕開始
# 
# Name   : start.mcfunction
# Path   : morph:creeper/
# As     : 變形成苦力怕的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_item", item: "creeper_head"}
tellraw @s [{"text": "你變成了"}, {"translate": "entity.minecraft.creeper"}]