execute store result entity @s data.x int 1 run scoreboard players get #a_x poison_point
execute store result entity @s data.y int 1 run scoreboard players get #a_y poison_point
execute store result entity @s data.z int 1 run scoreboard players get #a_z poison_point
execute store result entity @s data.dx int 1 run scoreboard players get #b_x poison_point
execute store result entity @s data.dy int 1 run scoreboard players get #b_y poison_point
execute store result entity @s data.dz int 1 run scoreboard players get #b_z poison_point

execute store result entity @s data.particle_dx int 0.0625 run scoreboard players get #b_x poison_point
execute store result entity @s data.particle_dy int 0.0625 run scoreboard players get #b_y poison_point
execute store result entity @s data.particle_dz int 0.0625 run scoreboard players get #b_z poison_point

scoreboard players operation #a_x poison_point *= #100 constant
scoreboard players operation #a_y poison_point *= #100 constant
scoreboard players operation #a_z poison_point *= #100 constant

scoreboard players operation #b_x poison_point *= #100 constant
scoreboard players operation #b_y poison_point *= #100 constant
scoreboard players operation #b_z poison_point *= #100 constant
scoreboard players operation #b_x poison_point /= #2 constant
scoreboard players operation #b_y poison_point /= #2 constant
scoreboard players operation #b_z poison_point /= #2 constant

scoreboard players operation #a_x poison_point += #b_x poison_point
scoreboard players operation #a_y poison_point += #b_y poison_point
scoreboard players operation #a_z poison_point += #b_z poison_point

execute store result entity @s data.particle_x int 0.01 run scoreboard players get #a_x poison_point
execute store result entity @s data.particle_y int 0.01 run scoreboard players get #a_y poison_point
execute store result entity @s data.particle_z int 0.01 run scoreboard players get #a_z poison_point

data merge entity @s {CustomName:"毒氣點"}

tag @s add poison_point
tag @s remove poison_a
tag @s remove poison_setting