execute store success score @s summon_operate run clear @s player_head[custom_data~{number:8}]
execute as @s[scores={summon_operate=1}] run return run function summon:reset

execute store success score @s summon_operate run clear @s player_head[custom_data~{number:1}]
execute as @s[scores={summon_operate=1}] run data modify storage jk2:data root.summon.head set value 1
execute store success score @s summon_operate run clear @s player_head[custom_data~{number:2}]
execute as @s[scores={summon_operate=1}] run data modify storage jk2:data root.summon.head set value 2
execute store success score @s summon_operate run clear @s player_head[custom_data~{number:3}]
execute as @s[scores={summon_operate=1}] run data modify storage jk2:data root.summon.head set value 3
execute store success score @s summon_operate run clear @s player_head[custom_data~{number:4}]
execute as @s[scores={summon_operate=1}] run data modify storage jk2:data root.summon.head set value 4
execute store success score @s summon_operate run clear @s player_head[custom_data~{number:5}]
execute as @s[scores={summon_operate=1}] run data modify storage jk2:data root.summon.head set value 5
execute store success score @s summon_operate run clear @s player_head[custom_data~{number:6}]
execute as @s[scores={summon_operate=1}] run data modify storage jk2:data root.summon.head set value 6
execute store success score @s summon_operate run clear @s player_head[custom_data~{number:7}]
execute as @s[scores={summon_operate=1}] run data modify storage jk2:data root.summon.head set value 7

function summon:head/reset

function summon:head/cooldown with storage jk2:data root.summon
execute if entity @s[tag=summon_fail] run return run tag @s remove summon_fail

function summon:head/set with storage jk2:data root.summon

playsound block.piston.extend ambient @s ~ ~ ~ 1 2
scoreboard players set @s summon_count 1
function summon:operation/reset