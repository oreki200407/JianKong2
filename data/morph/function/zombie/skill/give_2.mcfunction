###################################################
# 給予殭屍的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:zombie/skill/
# As     : 變形成殭屍的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_copper[item_model=red_dye, item_name={"text": "增援" , color: "gold"}, lore=[[{text: "召喚一隻", color: "white", italic: false}, {translate: "entity.minecraft.zombie"}], {text: "冷卻9秒", color: "aqua", italic: false}], custom_data={skill: 2b}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "entity.zombie.infect"}]