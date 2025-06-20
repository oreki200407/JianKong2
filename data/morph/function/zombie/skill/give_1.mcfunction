###################################################
# 給予殭屍的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:zombie/skill/
# As     : 變形成殭屍的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s ghast_tear[item_name={text: "利齒", color: "gold"}, lore=[{text: "下一個攻擊的玩家受到額外傷害", color: "white", italic: false}, {text:"冷卻6秒", color: "aqua", italic: false}], custom_data={skill: 1}, consumable={consume_seconds: 99999}]