$team join $(team)
$tag @s remove $(team)_tag
execute store result score @s uuid0 run data get entity @s UUID[0]