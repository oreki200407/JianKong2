tp @s ~ ~ ~ ~ ~
gamemode adventure @s
effect give @s resistance 10 100 true
title @s title {"text":"你已被救起了", "color": "red", "bold": true}
tellraw @a ["◎ ", {"selector": "@s"}, " 已被救起了"]