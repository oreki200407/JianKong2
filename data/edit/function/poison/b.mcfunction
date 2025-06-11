setblock ~ ~ ~ air
playsound ui.button.click ambient @p ~ ~ ~

execute unless entity @e[tag=poison_setting] run return run function edit:poison/fail

execute store result score #b_x poison_point run data get entity @s Pos[0]
execute store result score #b_y poison_point run data get entity @s Pos[1]
execute store result score #b_z poison_point run data get entity @s Pos[2]
scoreboard players operation #b_x poison_point -= #a_x poison_point
scoreboard players operation #b_y poison_point -= #a_y poison_point
scoreboard players operation #b_z poison_point -= #a_z poison_point

execute as @e[tag=poison_setting] at @s run function edit:poison/save
kill