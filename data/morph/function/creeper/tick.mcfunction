###################################################
# 身為苦力怕的tick
# 
# Name   : tick.mcfunction
# Path   : morph:creeper/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#沒有隱形了就變回苦力怕頭顱
execute if items entity @s armor.head player_head run return fail
execute if predicate {condition: "entity_properties", entity: "this", predicate: {effects: {invisibility: {}}}} run return fail

item modify entity @s armor.head [{function: "set_item", item: "player_head"}, {function: "set_components", components: {item_model: "player_head"}}]
item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable","dyed_color","enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=4501558]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable","dyed_color","enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=4501558]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable","dyed_color","enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=4501558]