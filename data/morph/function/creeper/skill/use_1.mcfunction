###################################################
# 使用苦力怕的第一個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:creeper/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#隱形4秒
effect give @s invisibility 4 0 true

#戴上隱形的物品
item modify entity @s armor.head [{function: "set_item", item: "green_dye"}, {function: "set_components", components: {item_model: "air"}}]

item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air