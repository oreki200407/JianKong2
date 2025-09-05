###################################################
# 正在穿著鞘翅
# 
# Name   : wearing.mcfunction
# Path   : morph:phantom/skill/1/
# As     : 變形成夜魅的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#正在穿著就不減少cd
execute store result score @s morph_skill_1 run data get storage jk2:data root.morph.cooldown.phantom[1]

#著地
item modify entity @s[predicate=game:flag/on_ground] armor.chest {function: "set_item", item: "leather_chestplate"}