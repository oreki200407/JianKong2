$team join $(team)
$tag @s remove $(team)_tag
gamemode adventure
effect give @s invisibility 3 0 true
effect give @s hunger 3 255 true
effect give @s regeneration 3 100 true
effect give @s resistance 3 100 true
effect give @s night_vision 3 0 true
effect give @s absorption 1 0 true
execute store result score @s uuid0 run data get entity @s UUID[0]