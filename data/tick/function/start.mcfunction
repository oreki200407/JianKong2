execute as @e[type=armor_stand, tag=death_stand] at @s if entity @a[team=survivor, gamemode=adventure, predicate=game:sneak, distance=..3] run function game:death/stand/saving

execute as @a[team=survivor,scores={reloading=0..}] run function gun:smg/reload/reloading