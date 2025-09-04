###################################################
# 給予伏守者的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:warden/skill/
# As     : 變形成伏守者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_copper[item_model=sculk_shrieker, item_name={translate: "effect.minecraft.darkness", color: "gold"}, lore=[[{text: "範圍10格內求生者獲得", color: "white", italic: false}, {translate: "effect.minecraft.darkness"}, "效果"], {text: "冷卻10秒", color: "aqua", italic: false}], custom_data={skill: 2b}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "block.sculk_shrieker.shriek"}]