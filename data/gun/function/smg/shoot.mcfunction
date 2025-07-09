execute unless entity @s[distance=..21] run return run tag @s remove shooter
execute unless function gun:can_through run return run tag @s remove shooter

particle mycelium ^ ^ ^.5 .05 .05 .05 0 1 force
execute positioned ~-.5 ~-.5 ~-.5 if entity @n[tag=!shooter, tag=monster, dx=0, dy=0, dz=0 ,team=monitor] run return run function gun:smg/success
execute positioned ^ ^ ^1 run function gun:smg/shoot