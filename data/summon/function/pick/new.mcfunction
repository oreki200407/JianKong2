scoreboard players add #summon_pick_release summon_monster 1
execute as @e[type=armor_stand,tag=summon_picked] if score @s summon_monster = #summon_pick_release summon_monster run tag @s add summon_pick_release
execute as @a[team=monitor] run function summon:head/reset
execute if score #summon_pick_release summon_monster matches 4.. run tellraw @a[team=monitor] ["◎ ", {"text": "新怪物","color":"gold"},"已登場"]

execute if score #summon_pick_release summon_monster matches 3..6 run schedule function summon:pick/new 300s