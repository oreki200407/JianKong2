playsound block.enchantment_table.use master
execute store result score #sword system run data get entity @s equipment.offhand.components."minecraft:attribute_modifiers"[{id:"jk2:attack_damage"}].amount
execute store result storage jk2:data root.sword.new_attack double 1 run scoreboard players add #sword system 1
data modify storage jk2:data root.sword.slot set value "offhand"
function gadget:whetstone/damage with storage jk2:data root.sword