#儲存的UUID
execute as @e[type=item_display, tag=tomb] store result score @s uuid0 run data get entity @s data.player_uuid0
scoreboard players operation #dying_player uuid0 = @s uuid0

#找到儲存了玩家的UUID的展示實體
tag @s add dying
execute as @e[type=item_display, tag=tomb] if score @s uuid0 = #dying_player uuid0 at @s run tp @a[tag=dying] ~ ~ ~
tag @s remove dying