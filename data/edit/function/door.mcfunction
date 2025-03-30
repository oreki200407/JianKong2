execute at @e[tag=door_edit,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["door"]}
execute at @e[tag=point_edit,type=armor_stand] run summon marker ~ ~ ~ {Tags: ["point"]}

kill @e[tag=door_edit,type=armor_stand]
kill @e[tag=point_edit,type=armor_stand]