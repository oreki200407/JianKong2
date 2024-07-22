#抽怪物
execute store result score @e[type=armor_stand,tag=summon_pick,tag=!summon_picked,limit=1,sort=random] summon_monster run scoreboard players add #number summon_monster 1
execute as @a[team=monitor] run function summon:reset
tellraw @a[team=monitor] ["","◎ ", {"text": "新怪物","color":"gold"},"已登場"]
tag @e[type=armor_stand,tag=summon_pick,tag=!summon_picked,scores={summon_monster=1..}] add summon_picked