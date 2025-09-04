###################################################
# 給予伏守者的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:warden/skill/
# As     : 變形成伏守者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_iron[item_model=sculk, item_name={text: "音爆攻擊", color: "gold"}, lore=[{text: "發出聲波尖嘯", color: "white", italic: false}, {text: "冷卻14秒", color: "aqua", italic: false}], custom_data={skill: 1b}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "entity.warden.sonic_boom"}]