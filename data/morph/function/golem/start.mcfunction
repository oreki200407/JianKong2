###################################################
# 變形成鐵巨人開始
# 
# Name   : start.mcfunction
# Path   : morph:golem/
# As     : 變形成鐵巨人的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {item_name: {translate: "entity.minecraft.iron_golem"},lore: [{text: "被動技能：攻擊玩家可把玩家擊飛", italic: false}], profile:{id: [I; 2092362149, -1722859307, -1677964379, -677981666], properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODkwOTFkNzllYTBmNTllZjdlZjk0ZDdiYmE2ZTVmMTdmMmY3ZDQ1NzJjNDRmOTBmNzZjNDgxOWE3MTQifX19"}]}}}
item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=14272695]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=14272695]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=14272695]
tag @s add golem_morph