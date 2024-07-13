execute unless block ~ ~ ~ #air run return run kill
scoreboard players add @s flame_fly 1
execute if score @s flame_fly matches 20 run return run kill

execute store success score #touch flame_fly align xyz as @e[type=#ranged_weapon:can_ignite, dx=0, dy=0, dz=0] run function ranged_weapon:flamethrower/flame/ignite
execute if score #touch flame_fly matches 1 run return run function ranged_weapon:flamethrower/flame/clear

particle flame ~ ~ ~ .2 .2 .2 0 1 force @a
tp @s ^ ^ ^.5