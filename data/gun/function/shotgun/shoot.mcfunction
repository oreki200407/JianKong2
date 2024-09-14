

execute unless entity @s[distance=..11] run return run tag @s remove shooter
execute unless block ~ ~ ~ #air unless block ~ ~ ~ #wooden_doors[open=true] run return run tag @s remove shooter

particle smoke ~ ~ ~ 1 1 1 0.1 15 force
execute as @e[distance=..2,tag=!shooter, type=#gun:entity ,team=monitor] run function gun:shotgun/success
execute positioned ^ ^ ^1 run return run function gun:shotgun/shoot