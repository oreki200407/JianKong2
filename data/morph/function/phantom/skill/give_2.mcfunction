###################################################
# 給予夜魅的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:phantom/skill/
# As     : 變形成夜魅的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_copper[item_model=leather_boots, item_name={text: "加速", color: "gold"}, lore=[[{text: "獲得", color: "white", italic: false}, {translate: "effect.minecraft.speed"}, "效果"], {text: "冷卻10秒", color: "aqua", italic: false}], custom_data={skill: 2b}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "block.grass.step"}]