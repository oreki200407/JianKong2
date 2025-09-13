###################################################
# 變形成夜魅開始
# 
# Name   : start.mcfunction
# Path   : morph:phantom/
# As     : 變形成夜魅的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {item_name: {translate: "entity.minecraft.phantom"}, lore: [{text: "被動技能：縮小、飛行", color: "white", italic: false}], profile: {properties: {textures: ["eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQ2ODMwZGE1ZjgzYTNhYWVkODM4YTk5MTU2YWQ3ODFhNzg5Y2ZjZjEzZTI1YmVlZjdmNTRhODZlNGZhNCJ9fX0="]}}}}
item replace entity @s armor.chest with elytra[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "dyed_color", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=5267876]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "dyed_color", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=5267876]

attribute @s scale modifier add jk2:phantom -0.5 add_value
scoreboard players reset @s use_firework