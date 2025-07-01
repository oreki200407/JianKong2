###################################################
# 身為苦力怕的tick
# 
# Name   : tick.mcfunction
# Path   : morph:creeper/
# As     : 變形的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#沒有隱形了就變回苦力怕頭顱
execute if items entity @s armor.head creeper_head unless predicate {condition: "entity_properties", entity: "this", predicate: {effects: {invisibility: {}}}} run item modify entity @s armor.head [{function: "set_item", item: "player_head"}, {function: "set_components", components: {item_model: "player_head"}}]