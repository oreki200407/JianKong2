execute if entity @s[distance=..5] as @e[distance=..2, tag=!shooter, type=#monster:player ,team=monitor, tag=!enderman_morph] run damage @s 10 generic by @a[tag=shooter,limit=1]
execute if entity @s[distance=5..11] as @e[distance=..2, tag=!shooter, type=#monster:player ,team=monitor, tag=!enderman_morph] run damage @s 6 generic by @a[tag=shooter,limit=1]

tag @a[tag=shooter,limit=1] remove shooter