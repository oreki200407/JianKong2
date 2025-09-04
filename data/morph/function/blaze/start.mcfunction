###################################################
# 變形成烈焰使者開始
# 
# Name   : start.mcfunction
# Path   : morph:blaze/
# As     : 變形成烈焰使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {item_name: {translate: "entity.minecraft.blaze"}, lore: [{text: "被動技能：永久抗火效果", color: "white", italic: false}], profile: {properties: {textures: ["eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjc4ZWYyZTRjZjJjNDFhMmQxNGJmZGU5Y2FmZjEwMjE5ZjViMWJmNWIzNWE0OWViNTFjNjQ2Nzg4MmNiNWYwIn19fQ=="]}}}}

item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "dyed_color", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=16302610]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "dyed_color", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=16302610]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "dyed_color", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=16302610]

effect give @s fire_resistance infinite 0 true