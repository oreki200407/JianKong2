###################################################
# 給予夜魅的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:phantom/skill/
# As     : 變形成夜魅的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_iron[item_model=elytra, item_name={text: "起飛", color: "gold"}, lore=[[{text: "裝備上", color: "white", italic: false}, {translate: "item.minecraft.elytra"}, "並起飛"], {text: "冷卻10秒", color: "aqua", italic: false}], custom_data={skill: 1b}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "item.armor.equip_elytra"}]