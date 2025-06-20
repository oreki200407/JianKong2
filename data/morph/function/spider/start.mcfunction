###################################################
# 變形成蜘蛛開始
# 
# Name   : start.mcfunction
# Path   : morph:spider/
# As     : 變形成蜘蛛的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {item_name: {translate: "entity.minecraft.spider"}, profile: {id: [I; -1948552752, 1193560242, -1824200812, -2143139944], properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2Q1NDE1NDFkYWFmZjUwODk2Y2QyNThiZGJkZDRjZjgwYzNiYTgxNjczNTcyNjA3OGJmZTM5MzkyN2U1N2YxIn19fQ=="}]}}}
item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=4537654]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=4537654]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=4537654]