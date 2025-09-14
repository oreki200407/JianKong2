###################################################
# 給予旋風使者的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:breeze/skill/
# As     : 變形成旋風使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_copper[item_model=breeze_rod, item_name={text: "彈跳", color: "gold"}, lore=[[{translate: "effect.minecraft.jump_boost", color: "white", italic: false}, "5秒"], {text: "冷卻8秒", color: "aqua", italic: false}], custom_data={skill: 2b}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "intentionally_empty", on_consume_effects: [{type: "apply_effects", effects: [{id: "jump_boost", duration: 100, amplifier: 7}]}]}]