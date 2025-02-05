#儲存的UUID
execute as @e[type=item_display,tag=death_stand] store result score @s uuid0 run data get entity @s item.components."minecraft:profile".id[0]
scoreboard players operation #stand uuid0 = @s uuid0
#找到跟頭顱裡UUID相同的盔甲架
execute as @e[type=item_display, tag=death_stand] if score @s uuid0 = #stand uuid0 run tag @s add temp
execute at @e[type=item_display,tag=death_stand,tag=temp,limit=1] run tp @s ~ ~ ~
tag @e[type=item_display,tag=death_stand,tag=temp,limit=1] remove temp