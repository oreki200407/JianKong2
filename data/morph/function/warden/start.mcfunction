###################################################
# 變形成伏守者開始
# 
# Name   : start.mcfunction
# Path   : morph:warden/
# As     : 變形成伏守者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {item_name: {translate: "entity.minecraft.warden"}, lore: [[{text: "被動技能：", color: "white", italic: false}, {translate: "effect.minecraft.blindness"}, " 和 ", {translate: "effect.minecraft.strength"}, "，且可以得知玩家們的位置"]], profile: {properties: {textures: ["eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDUyZWE5NDBjNjZmMGY2Zjk5MmYzYzU0ODc1YWNhNzllNDQ4MGMzNTc0N2E2MDU0YzMzYzFhZDQ1ZmI0MDI2NSJ9fX0="]}}}}
item replace entity @s armor.chest with leather_chestplate[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "dyed_color", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=352861]
item replace entity @s armor.legs with leather_leggings[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "dyed_color", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=352861]
item replace entity @s armor.feet with leather_boots[unbreakable={}, tooltip_display={hidden_components: ["unbreakable", "dyed_color", "enchantments"]}, enchantment_glint_override=false, enchantments={binding_curse: 1}, dyed_color=352861]

effect give @s blindness infinite 0 true
effect give @s strength infinite 9 true
bossbar set jk2:distance players @s
#失明狀態下不能跑步
attribute @s movement_speed modifier add jk2:warden 0.3 add_multiplied_total