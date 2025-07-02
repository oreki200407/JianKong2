###################################################
# 給予終界使者的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:enderman/skill/
# As     : 變形成終界使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_copper[item_model=grass_block, item_name={text: "放置方塊", color: "gold"}, lore=[[{text: "在原地放置一個", color: "white", italic: false}, {translate: "block.minecraft.grass_block"}], {text: "冷卻10秒", color: "aqua", italic: false}], custom_data={"skill": 2b}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "intentionally_empty"}]