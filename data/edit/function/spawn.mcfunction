tag @e[tag=spawn_survivor, type=armor_stand, limit=1] add spawn_survivor_keep

execute at @e[tag=spawn_survivor,tag=!spawn_survivor_keep,type=armor_stand, limit=1] run tellraw @p ["◎ 只能設定一個", {"text": "求生者重生點","color":"gold"}]
kill @e[tag=spawn_survivor,tag=!spawn_survivor_keep, type=armor_stand]

tag @e[tag=spawn_survivor_keep, type=armor_stand] remove spawn_survivor_keep

execute store result score 求生者重生點 edit if entity @e[tag=spawn_survivor, type=armor_stand]