advancement revoke @s only gadget:attack

execute if items entity @s weapon iron_sword[damage=250] run return run function gadget:whetstone/broken
execute unless predicate gadget:sword run return fail

item modify entity @s weapon {function: "set_damage", add: true, damage: -0.01}
playsound item.trident.throw ambient
execute store result score #sword system run data get entity @s SelectedItem.components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount
execute store result storage jk2:data root.sword.new_attack double 1 run scoreboard players remove #sword system 1
data modify storage jk2:data root.sword.slot set value "mainhand" 
function gadget:whetstone/damage with storage jk2:data root.sword