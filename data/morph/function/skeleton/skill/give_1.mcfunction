###################################################
# 給予骷髏的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:skeleton/skill/
# As     : 變形成骷髏的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_iron[item_model=arrow, item_name={text: "射擊" ,color: "gold"}, lore=[[{text: "往前射一發", color: "white", italic: false}, {translate: "entity.minecraft.arrow"}], {text: "冷卻3秒", color: "aqua", italic: false}], custom_data={skill: 1}, consumable={consume_seconds: 99999}]