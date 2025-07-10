particle squid_ink ~ ~ ~ .5 .5 .5 0.1 10 force @a
tag @s add absorbing
execute as @e[team=survivor, distance=..8] at @s facing entity @n[type=area_effect_cloud, tag=absorbing, distance=..8] eyes positioned ^ ^ ^.7 if function gun:can_through run tp @s ^ ^ ^.2
tag @s remove absorbing