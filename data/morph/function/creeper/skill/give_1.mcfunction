###################################################
# 給予苦力怕的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:creeper/skill/
# As     : 變形成苦力怕的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_iron[item_model=glass, item_name={text: "隱身" ,color: "gold"}, lore=[[{translate: "effect.minecraft.invisibility", color: "white", italic: false}, "4秒"], {text: "冷卻9秒", color: "aqua", italic: false}], custom_data={skill: 1}, consumable={consume_seconds: 99999}]