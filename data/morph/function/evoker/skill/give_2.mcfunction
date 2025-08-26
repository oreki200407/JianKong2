###################################################
# 給予喚魔者的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:evoker/skill/
# As     : 變形成喚魔者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_copper[item_model=iron_nugget, item_name=[{text: "召喚", color: "gold"}, {translate: "entity.minecraft.vex"}], lore=[[{text: "召喚一隻", color: "white", italic: false}, {translate: "entity.minecraft.vex"}], {text: "冷卻11秒", color: "aqua", italic: false}], custom_data={skill: 2b}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "entity.evoker.prepare_summon"}]