###################################################
# 給予蜘蛛的第二個技能物品
# 
# Name   : give_2.mcfunction
# Path   : morph:spider/skill/
# As     : 變形成蜘蛛的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s raw_copper[item_model=cobweb,item_name={"text": "吐絲" , color: "gold"},lore=[[{text: "對前方的求生者放置蜘蛛網", color: "white", italic: false}], {text: "冷卻10秒", color: "aqua", italic: false}],custom_data={skill: 2}, consumable={consume_seconds: 99999}]