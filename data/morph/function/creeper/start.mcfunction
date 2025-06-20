###################################################
# 變形成苦力怕開始
# 
# Name   : start.mcfunction
# Path   : morph:creeper/
# As     : 變形成苦力怕的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {item_name: {translate: "entity.minecraft.creeper"}, profile: {id: [I; -288171773, -902673209, -1287927237, -605975132], properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjQyNTQ4MzhjMzNlYTIyN2ZmY2EyMjNkZGRhYWJmZTBiMDIxNWY3MGRhNjQ5ZTk0NDQ3N2Y0NDM3MGNhNjk1MiJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=4501558]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=4501558]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=4501558]