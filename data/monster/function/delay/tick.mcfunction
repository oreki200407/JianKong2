execute unless score @s monster_delay matches 50.. run return run scoreboard players add @s monster_delay 1

attribute @s attack_damage modifier remove jk2:delay
attribute @s movement_speed modifier remove jk2:delay
attribute @s jump_strength modifier remove jk2:delay
attribute @s follow_range modifier remove jk2:delay
scoreboard players reset @s monster_delay