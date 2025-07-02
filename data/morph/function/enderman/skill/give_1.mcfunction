###################################################
# 給予終界使者的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:enderman/skill/
# As     : 變形成終界使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s ender_pearl[item_name={"text":"傳送", color: "gold"}, lore=[[{text: "往前丟出", color: "white", italic: false}, {translate: "item.minecraft.ender_pearl"}], {text: "冷卻6秒", color: "aqua", italic: false}], custom_data={"skill": 1b}]