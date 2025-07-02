###################################################
# 給予烈焰使者的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:blaze/skill/
# As     : 變形成烈焰使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_iron[item_model=fire_charge, item_name={translate: "item.minecraft.fire_charge" , color: "gold"},lore=[[{text: "往前射一發", color: "white", italic: false}, {translate: "entity.minecraft.fireball"}], {text: "冷卻6秒", color: "aqua", italic: false}], custom_data={"skill": "1"}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "intentionally_empty"}]