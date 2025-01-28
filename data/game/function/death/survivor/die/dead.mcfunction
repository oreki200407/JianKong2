###################################################
# 玩家倒地後倒數死透
# 
# Name   : dead.mcfunction
# Path   : game:death/survivor/die/
# As     : 死透的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#死透

#儲存的UUID
execute as @e[type=item_display, tag=death_stand] store result score @s uuid0 run data get entity @s item.components."minecraft:profile".id[0]
scoreboard players operation #stand uuid0 = @s uuid0

#找到跟頭顱裡UUID相同的盔甲架
execute as @e[type=item_display, tag=death_stand] if score @s uuid0 = #stand uuid0 run kill

gamemode adventure @s
effect give @s resistance 10 100 true
effect give @s strength 10 1 true
tag @s remove fall_down
scoreboard players reset @s death_time