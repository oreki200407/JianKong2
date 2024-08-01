#抽怪物
execute as @e[type=armor_stand,tag=summon_pick,tag=!summon_picked,limit=1,sort=random] run function summon:pick/picking

execute as @a[team=monitor] run function summon:reset
tellraw @a[team=monitor] ["","◎ ", {"text": "新怪物","color":"gold"},"已登場"]