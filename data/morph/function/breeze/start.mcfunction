###################################################
# 變形成旋風使者開始
# 
# Name   : start.mcfunction
# Path   : morph:breeze/
# As     : 變形成旋風使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {item_name: {translate: "entity.minecraft.breeze"}, lore: [[{text: "被動技能：永久", color: "white", italic: false}, {translate: "effect.minecraft.wind_charged"}, "效果"]], profile: {properties: {textures: ["eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODA4NDNhOTRmOTI1YjU1OTg5MjRmZjliNTJiNzk5OWM4ZDI5ZDFiNzkwYWQ0ODdkZDU0ZTI3OTU2ZTU0MGQyMCJ9fX0="]}}}}

item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "dyed_color", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=11904458]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "dyed_color", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=11904458]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "dyed_color", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=11904458]

effect give @s wind_charged infinite 0 true
scoreboard players reset @s use_wind_charge