###################################################
# 給予苦力怕的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:creeper/skill/
# As     : 變形成苦力怕的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_copper[item_model=tnt, item_name={text: "爆破", color: "gold"}, lore=[[{text: "往前丟一顆", color: "white", italic: false}, {translate: "entity.minecraft.tnt"}], {text: "冷卻13秒", color: "aqua", italic: false}], custom_data={"skill": 2b}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "intentionally_empty"}]