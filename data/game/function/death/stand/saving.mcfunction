#3秒復活
scoreboard players add @s revive_time 1
execute if score @s revive_time matches 60 run function game:death/stand/revive