###################################################
# 給予烈焰使者的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:blaze/skill/
# As     : 變形成烈焰使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_copper[item_model=blaze_powder, item_name={text: "燃燒之路" , color: "gold"}, lore=[[{text: "腳下持續出現火焰7秒", color: "white", italic: false}], {text: "冷卻14秒", color: "aqua", italic: false}], custom_data={"skill": 2b}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "intentionally_empty"}]