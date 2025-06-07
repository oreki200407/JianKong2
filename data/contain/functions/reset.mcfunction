#重置
kill @e[tag=contain]
execute as @e[tag=contain_marker] at @s run function contain:summon
scoreboard players set #room contain_temperature 20
scoreboard players set @e[tag=contain] contain_health 20
scoreboard players set @e[tag=contain] contain_temperature 20
scoreboard players set @e[tag=contain] contain_food 20