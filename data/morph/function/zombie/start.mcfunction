###################################################
# 變形成殭屍開始
# 
# Name   : start.mcfunction
# Path   : morph:zombie/
# As     : 變形成殭屍的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {"item_name": {"translate": "entity.minecraft.zombie"}, profile: {id:[I;-1722163816,-273461527,-1459933222,35179936],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZmYzg1NGJiODRjZjRiNzY5NzI5Nzk3M2UwMmI3OWJjMTA2OTg0NjBiNTFhNjM5YzYwZTVlNDE3NzM0ZTExIn19fQ=="}]}}}
item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=false,enchantments={binding_curse: 1},dyed_color=569262]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=false,enchantments={binding_curse: 1},dyed_color=4997286]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=false,enchantments={binding_curse: 1},dyed_color=7434609]