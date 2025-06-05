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

item modify entity @s armor.head {function: "set_components", components: {"item_name": {"translate": "entity.minecraft.evoker"},profile: {id:[I;1662638663,828198224,-1833578565,-1912836640],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODA2YWMwMmZkOWRhYzk2NmI3ZTU4MDY3MzZiNmZlYjkwZTJmM2IwNTc3OTY5ZTY3MzI5MWI4MzA3YzFlZjhlNSJ9fX0="}]}}}
item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=true,enchantments={binding_curse: 1},dyed_color=1512980]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=true,enchantments={binding_curse: 1},dyed_color=1512980]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=true,enchantments={binding_curse: 1},dyed_color=1512980]

tag @s add evoker