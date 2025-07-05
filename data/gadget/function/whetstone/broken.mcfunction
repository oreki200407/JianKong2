playsound item.shield.break ambient
item modify entity @s weapon {function:"minecraft:set_item",item:"bone"}
execute store result score #sword system run data get entity @s SelectedItem.components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount
execute store result storage jk2:data root.sword.new_attack double 1 run scoreboard players remove #sword system 10
data modify storage jk2:data root.sword.slot set value "mainhand"
function gadget:whetstone/damage with storage jk2:data root