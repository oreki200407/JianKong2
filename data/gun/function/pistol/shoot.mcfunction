execute unless entity @s[distance=..41] run return run tag @s remove shooter
execute unless block ~ ~ ~ #air unless block ~ ~ ~ #wooden_doors[open=true] run return run tag @s remove shooter

particle smoke ^ ^ ^0.5 0.05 0.05 0.05 0 1 force
execute positioned ~-.5 ~-.5 ~-.5 if entity @n[tag=!shooter, type=#gun:entity, dx=0, dy=0, dz=0 ,team=monitor] run return run function gun:pistol/success
execute positioned ^ ^ ^1 run function gun:pistol/shoot