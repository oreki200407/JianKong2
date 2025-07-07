execute unless entity @s[distance=..5] run return run tag @s remove shooter
execute unless function gun:can_through run return run tag @s remove shooter

particle smoke ~ ~-.5 ~ .2 .2 .2 .1 1 force
execute as @e[distance=..4,tag=!shooter, type=#monster:player ,team=monitor] run function gun:chainsaw/success
execute positioned ^ ^ ^1 run function gun:chainsaw/shoot