###################################################
# 給予蜘蛛的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:spider/skill/
# As     : 變形成蜘蛛的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_iron[item_model=cave_spider_spawn_egg, item_name={"text": "夥伴", color: "gold"}, lore=[[{text: "召喚一隻", color: "white", italic: false}, {translate: "entity.minecraft.cave_spider"}], {text: "冷卻6秒", color: "aqua", italic: false}], custom_data={"skill": "1"}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "intentionally_empty"}]