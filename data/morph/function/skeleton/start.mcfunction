###################################################
# 變形成骷髏開始
# 
# Name   : start.mcfunction
# Path   : morph:skeleton/
# As     : 變形成骷髏的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_item", item: "skeleton_skull"}
tellraw @s [{"text": "你變成了"}, {"translate": "entity.minecraft.skeleton"}]