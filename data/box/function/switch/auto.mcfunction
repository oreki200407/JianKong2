#自動更換
scoreboard players remove #switch_box system 1
execute if score #switch_box system matches 0 as @e[type=armor_stand, tag=box_point, tag=!box, sort=random, limit=1] at @s run function box:switch/new_box