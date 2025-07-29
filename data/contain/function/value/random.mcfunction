###################################################
# 給原料的怪物的隨機
# 
# Name   : random.mcfunction
# Path   : contain:value/
# As     : 給原料的怪物們(@e[tag=contain])
# At     : 世界重生點
# Loop   : 是，一秒
# Author : oreki20
###################################################

#---隨機---
execute if predicate {"condition": "minecraft:random_chance","chance": 0.001} at @s run return run function contain:escape/root

execute if score #room contain_temperature matches ..12 if predicate game:chance/15 run function contain:value/temperature_low
execute if score #room contain_temperature matches 13..16 if predicate game:chance/10 run function contain:value/temperature_low
execute if score #room contain_temperature matches 17..19 if predicate game:chance/5 run function contain:value/temperature_low
execute if score #room contain_temperature matches 20 if predicate game:chance/5 run function contain:value/temperature
execute if score #room contain_temperature matches 21..23 if predicate game:chance/5 run function contain:value/temperature_high
execute if score #room contain_temperature matches 24..27 if predicate game:chance/10 run function contain:value/temperature_high
execute if score #room contain_temperature matches 28.. if predicate game:chance/15 run function contain:value/temperature_high

execute if score @s contain_food matches 31.. if predicate game:chance/1 run function contain:value/food
execute if score @s contain_food matches 10..30 if predicate game:chance/5 run function contain:value/food
execute if score @s contain_food matches ..9 if predicate game:chance/10 run function contain:value/food

execute if score @s contain_temperature matches ..4 if predicate game:chance/10 run function contain:value/health
execute if score @s contain_temperature matches 5..9 if predicate game:chance/5 run function contain:value/health
execute if score @s contain_temperature matches 10..14 if predicate game:chance/1 run function contain:value/health
execute if score @s contain_temperature matches 26..30 if predicate game:chance/1 run function contain:value/health
execute if score @s contain_temperature matches 31..35 if predicate game:chance/5 run function contain:value/health
execute if score @s contain_temperature matches 36.. if predicate game:chance/10 run function contain:value/health

execute if score @s contain_food matches ..4 if predicate game:chance/10 run function contain:value/health
execute if score @s contain_food matches 5..9 if predicate game:chance/5 run function contain:value/health
execute if score @s contain_food matches 10..14 if predicate game:chance/1 run function contain:value/health
execute if score @s contain_food matches 26..30 if predicate game:chance/1 run function contain:value/health
execute if score @s contain_food matches 31..35 if predicate game:chance/5 run function contain:value/health
execute if score @s contain_food matches 36.. if predicate game:chance/10 run function contain:value/health