#---體溫---
execute if score #room contain_temperature matches 19 run return run scoreboard players remove @s contain_temperature 1

execute if score #room contain_temperature matches 21 run return run scoreboard players add @s contain_temperature 1

#20
execute if predicate game:chance/50 run return run scoreboard players add @s contain_temperature 1
scoreboard players remove @s contain_temperature 1