#---隨機---
execute if predicate game:chance/5 at @s run return run function contain:escape/root

execute if score #room contain_temperature matches ..14 if predicate game:chance/20 run scoreboard players remove @s contain_temperature 1
execute if score #room contain_temperature matches 15..18 if predicate game:chance/10 run scoreboard players remove @s contain_temperature 1
execute if score #room contain_temperature matches 19..21 if predicate game:chance/10 run function contain:temperature
execute if score #room contain_temperature matches 22..25 if predicate game:chance/10 run scoreboard players add @s contain_temperature 1
execute if score #room contain_temperature matches 26.. if predicate game:chance/20 run scoreboard players add @s contain_temperature 1

execute if score @s contain_food matches 19.. if predicate game:chance/5 run scoreboard players remove @s contain_food 1
execute if score @s contain_food matches 12..18 if predicate game:chance/10 run scoreboard players remove @s contain_food 1
execute if score @s contain_food matches ..11 if predicate game:chance/20 run scoreboard players remove @s contain_food 1

execute if score @s contain_temperature matches ..6 if predicate game:chance/20 run scoreboard players remove @s contain_health 1
execute if score @s contain_temperature matches 7..10 if predicate game:chance/10 run scoreboard players remove @s contain_health 1
execute if score @s contain_temperature matches 11..15 if predicate game:chance/5 run scoreboard players remove @s contain_health 1
execute if score @s contain_temperature matches 25..29 if predicate game:chance/5 run scoreboard players remove @s contain_health 1
execute if score @s contain_temperature matches 30..33 if predicate game:chance/10 run scoreboard players remove @s contain_health 1
execute if score @s contain_temperature matches 34.. if predicate game:chance/20 run scoreboard players remove @s contain_health 1

execute if score @s contain_food matches ..6 if predicate game:chance/20 run scoreboard players remove @s contain_health 1
execute if score @s contain_food matches 7..10 if predicate game:chance/10 run scoreboard players remove @s contain_health 1
execute if score @s contain_food matches 11..15 if predicate game:chance/5 run scoreboard players remove @s contain_health 1
execute if score @s contain_food matches 25..29 if predicate game:chance/5 run scoreboard players remove @s contain_health 1
execute if score @s contain_food matches 30..33 if predicate game:chance/10 run scoreboard players remove @s contain_health 1
execute if score @s contain_food matches 34.. if predicate game:chance/20 run scoreboard players remove @s contain_health 1