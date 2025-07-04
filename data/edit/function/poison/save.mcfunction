execute store result entity @s data.x int 1 run scoreboard players get #a_x poison_point
execute store result entity @s data.y int 1 run scoreboard players get #a_y poison_point
execute store result entity @s data.z int 1 run scoreboard players get #a_z poison_point
execute store result entity @s data.dx int 1 run scoreboard players get #b_x poison_point
execute store result entity @s data.dy int 1 run scoreboard players get #b_y poison_point
execute store result entity @s data.dz int 1 run scoreboard players get #b_z poison_point

scoreboard players operation #particle_x poison_point = #b_x poison_point
scoreboard players operation #particle_y poison_point = #b_y poison_point
scoreboard players operation #particle_z poison_point = #b_z poison_point
execute if score #particle_x poison_point matches ..0 store result entity @s data.particle_dx double -0.125 run scoreboard players remove #particle_x poison_point 1
execute if score #particle_y poison_point matches ..0 store result entity @s data.particle_dy double -0.125 run scoreboard players remove #particle_y poison_point 1
execute if score #particle_z poison_point matches ..0 store result entity @s data.particle_dz double -0.125 run scoreboard players remove #particle_z poison_point 1
execute if score #particle_x poison_point matches 0.. store result entity @s data.particle_dx double 0.125 run scoreboard players add #particle_x poison_point 1
execute if score #particle_y poison_point matches 0.. store result entity @s data.particle_dy double 0.125 run scoreboard players add #particle_y poison_point 1
execute if score #particle_z poison_point matches 0.. store result entity @s data.particle_dz double 0.125 run scoreboard players add #particle_z poison_point 1

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

execute store result entity @s data.particle_x double 0.01 run scoreboard players get #a_x poison_point
execute store result entity @s data.particle_y double 0.01 run scoreboard players get #a_y poison_point
execute store result entity @s data.particle_z double 0.01 run scoreboard players get #a_z poison_point

data remove entity @s CustomName
tag @s add poison_point
tag @s remove poison_setting