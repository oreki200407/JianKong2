###################################################
# 給予鐵巨人的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:golem/skill/
# As     : 變形成鐵巨人的玩家
# At     : 世界重生點
# Loop   : 否
# Author : oreki20
###################################################

give @s raw_copper[item_model=iron_ingot,item_name={"text":"鐵錠治療","color":"gold"},lore=[[{"text":"獲得","color":"white","italic":false}, {translate: "effect.minecraft.instant_health"}, "I"],{"text":"冷卻12秒","color":"aqua","italic":false}],custom_data={skill: 2}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "intentionally_empty"}]