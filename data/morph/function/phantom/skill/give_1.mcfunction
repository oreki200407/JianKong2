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

give @s firework_rocket[item_name={text: "起飛", color: "gold"}, lore=[[{text: "利用", color: "white", italic: false}, {translate: "item.minecraft.elytra"}, "飛行"], {text: "冷卻10秒", color: "aqua", italic: false}], custom_data={skill: 1b}, fireworks={flight_duration: 1}]