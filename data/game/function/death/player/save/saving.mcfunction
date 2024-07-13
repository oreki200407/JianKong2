#3秒復活
scoreboard players add @s revive_time 1

execute if score @s revive_time matches 1..30 run return run function game:death/player/save/upper_half
execute if score @s revive_time matches 31..61 run return run function game:death/player/save/lower_half

title @s actionbar ""
execute as @e[type=armor_stand, tag=death_stand, distance=..3] run function game:death/stand/revive