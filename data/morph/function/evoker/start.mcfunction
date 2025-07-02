###################################################
# 變形成喚魔者開始
# 
# Name   : start.mcfunction
# Path   : morph:evoker/
# As     : 變形成喚魔者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {item_name: {translate: "entity.minecraft.evoker"}, lore: [{text: "被動技能：攻擊玩家有5%機率在玩家處召喚尖刺", italic: false, color:white}], profile: {properties: {textures: ["eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODA2YWMwMmZkOWRhYzk2NmI3ZTU4MDY3MzZiNmZlYjkwZTJmM2IwNTc3OTY5ZTY3MzI5MWI4MzA3YzFlZjhlNSJ9fX0="]}}}}
item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable","dyed_color","enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=1512980]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable","dyed_color","enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=1512980]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable","dyed_color","enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=1512980]

tag @s add evoker_morph