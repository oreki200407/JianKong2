tag @e[tag=spawn_survivor,limit=1] add spawn_survivor_keep

execute at @e[tag=spawn_survivor,tag=!spawn_survivor_keep,limit=1] run tellraw @p ["◎ 不能設定超過兩個", {"text": "求生者重生點","color":"gold"}]
kill @e[tag=spawn_survivor,tag=!spawn_survivor_keep]

tag @e[tag=spawn_survivor_keep] remove spawn_survivor_keep