###################################################
# 變形成骷髏開始
# 
# Name   : start.mcfunction
# Path   : morph:skeleton/
# As     : 變形成骷髏的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {item_name: {translate: "entity.minecraft.skeleton"}, profile: {id: [I; -1235635673, -1149942338, -1971409182, 1320249502], properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDgyYjc4ZGE2ZWU3MTNkNWFjZmU1ZmNiMDc1NGVlNTY5MDA4MzFhNTA5ODMxMzA2NDEwOGRlNmU3ZTQwNjgzOSJ9fX0="}]}}}
item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=12500670]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=12500670]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=12500670]