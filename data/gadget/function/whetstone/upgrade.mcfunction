playsound block.enchantment_table.use ambient
execute store result score #sword system run data get entity @s SelectedItem.components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount
execute store result storage jk2:data root.sword double 1 run scoreboard players add #sword system 1
function gadget:whetstone/damage with storage jk2:data root