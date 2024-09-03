###################################################
# 變形成苦力怕
# 
# Name   : start.mcfunction
# Path   : morph:player/creeper/
# As     : 變形的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_item", item: "creeper_head"}
tellraw @s [{"text": "你變成了"}, {"translate": "entity.minecraft.creeper"}]

item replace entity @s hotbar.0 with glass[custom_data={skill: 1}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}]
item replace entity @s hotbar.1 with tnt[custom_data={skill: 2}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}]

#技能1冷卻9秒 技能2冷卻13秒
data modify storage jk2:data root.morph.cooldown set value {skill_1: 180, skill_2: 260}