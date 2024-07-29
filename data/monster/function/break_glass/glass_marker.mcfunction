tag @s add being_watched
scoreboard players add @s glass_break 1

#5秒後打破玻璃
execute unless score @s glass_break matches 100 run return fail

setblock ~ ~ ~ air destroy
kill