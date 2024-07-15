execute if score @a[tag=shooter,limit=1] front_distance matches 1..5 run damage @s 5 generic by @a[tag=shooter,limit=1]
execute if score @a[tag=shooter,limit=1] front_distance matches 6..10 run damage @s 3 generic by @a[tag=shooter,limit=1]

execute as @a[tag=shooter,limit=1] run function gun:stop