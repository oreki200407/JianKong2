#自動更換
execute if score #switch_box system matches 1.. run return run scoreboard players remove #switch_box system 1
execute as @e[type=armor_stand, tag=box_point, tag=!box, sort=random, limit=1] at @s run function box:switch/new_box
scoreboard players operation #switch_box system = #switch_box_second system