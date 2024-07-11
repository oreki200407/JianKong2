execute as @a[tag=!join] run function system:join
execute as @a[scores = {death = 1}] run function system:no_violence
execute store result score 寶箱點 editinfo if entity @e[tag = treasure_point]
execute as @e[type = armor_stand, tag = treasure_point, tag = !edited] at @s run function edit:modify
execute as @e[type = armor_stand, tag = treasure_point, tag = edited] at @s run function edit:edited