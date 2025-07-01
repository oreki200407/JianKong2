###################################################
# 給予喚魔者的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:evoker/skill/
# As     : 變形成喚魔者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_iron[item_model=redstone, item_name={text: "治療怪物", color: "gold"}, lore=[[{text: "周圍六格內怪物回血", color: "white", italic: false}], {text: "冷卻7秒", color: "aqua", italic: false}], custom_data={skill: 1}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "intentionally_empty"}]