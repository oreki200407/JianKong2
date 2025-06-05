###################################################
# 變形成終界使者開始
# 
# Name   : start.mcfunction
# Path   : morph:enderman/
# As     : 變形成終界使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {"item_name": {"translate": "entity.minecraft.enderman"}, profile: {id:[I;233407588,309611990,-1146603762,-94551640],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2E1OWJiMGE3YTMyOTY1YjNkOTBkOGVhZmE4OTlkMTgzNWY0MjQ1MDllYWRkNGU2YjcwOWFkYTUwYjljZiJ9fX0="}]}}}
item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=true,enchantments={binding_curse: 1},dyed_color=3082824]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=true,enchantments={binding_curse: 1},dyed_color=3082824]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]},enchantment_glint_override=true,enchantments={binding_curse: 1},dyed_color=3082824]