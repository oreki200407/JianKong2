execute if entity @a[tag=shooter,limit=1,distance=..5] run damage @s 5 generic by @a[tag=shooter,limit=1]
execute if entity @a[tag=shooter,limit=1,distance=5.1..10] run damage @s 3 generic by @a[tag=shooter,limit=1]

tag @a[tag=shooter,limit=1] remove shooter