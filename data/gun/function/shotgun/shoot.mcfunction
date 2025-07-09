execute unless entity @s[distance=..11] run return run tag @s remove shooter
execute unless function gun:can_through run return run tag @s remove shooter

particle smoke ~ ~ ~ 1 1 1 0.1 15 force
execute if entity @e[distance=..2, tag=!shooter, tag=monster, team=monitor] positioned ^ ^ ^1 run return run function gun:shotgun/success
execute positioned ^ ^ ^1 run return run function gun:shotgun/shoot