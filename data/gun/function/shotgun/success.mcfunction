execute if entity @s[distance=..5] as @e[distance=..2, tag=!shooter, type=#gun:entity ,team=monitor, tag=!enderman_morph] run damage @s 7 generic by @a[tag=shooter,limit=1]
execute if entity @s[distance=5.01..11] as @e[distance=..2, tag=!shooter, type=#gun:entity ,team=monitor, tag=!enderman_morph] run damage @s 5 generic by @a[tag=shooter,limit=1]

tag @a[tag=shooter,limit=1] remove shooter