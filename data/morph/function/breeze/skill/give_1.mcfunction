###################################################
# 給予旋風使者的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:breeze/skill/
# As     : 變形成旋風使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s wind_charge[item_name={translate: "item.minecraft.wind_charge"}, lore=[[{text: "往前射一發", color: "white", italic: false}, {translate:"entity.minecraft.wind_charge"}], {text: "冷卻6秒", color: "aqua", italic: false}], custom_data={skill: 1b}]