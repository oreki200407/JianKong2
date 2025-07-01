###################################################
# 給予烈焰使者的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:blaze/skill/
# As     : 變形成烈焰使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_iron[item_model=fire_charge,item_name={"text": "火焰彈" , color: "gold"},lore=[[{text: "往前射一發火焰彈", color: "white", italic: false}], {text: "冷卻6秒", color: "aqua", italic: false}],custom_data={skill: 1}, consumable={consume_seconds: 99999}]