execute unless entity @s[distance=..3] run return run tag @s remove shooter
execute unless function gun:can_through run return run tag @s remove shooter

particle smoke ~ ~-.5 ~ .2 .2 .2 .1 1 force
execute as @e[distance=..3, tag=!shooter, tag=monster ,team=monitor] run damage @s 0.5 dry_out by @a[tag=shooter,limit=1]
execute positioned ^ ^ ^1 run function gun:chainsaw/shoot