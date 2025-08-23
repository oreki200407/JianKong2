tag @e[type=armor_stand, tag=spawn_survivor,limit=1] add spawn_survivor_keep

execute at @e[type=armor_stand, tag=spawn_survivor,tag=!spawn_survivor_keep,limit=1] run tellraw @p ["◎ 只能設定一個", {"text": "求生者重生點","color":"gold"}]
kill @e[type=armor_stand, tag=spawn_survivor,tag=!spawn_survivor_keep]

tag @e[type=armor_stand, tag=spawn_survivor_keep] remove spawn_survivor_keep

execute store result score 求生者重生點 edit if entity @e[type=armor_stand, tag=spawn_survivor]