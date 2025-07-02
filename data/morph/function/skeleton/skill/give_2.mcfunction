###################################################
# 給予骷髏的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:skeleton/skill/
# As     : 變形成骷髏的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_copper[item_model=spider_eye, item_name={text: "騎士", color: "gold"}, lore=[[{text: "騎在敏捷的", color: "white", italic: false}, {translate: "entity.minecraft.spider"}, "上"], {text: "冷卻10秒", color: "aqua", italic: false}], custom_data={"skill": "2"}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "intentionally_empty"}]