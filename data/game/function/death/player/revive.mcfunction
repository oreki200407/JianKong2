tp @s ~ ~ ~ ~ ~
gamemode adventure @s
effect give @s resistance 10 100 true
title @s title {"text":"你已被救起了","bold": true,"color": "red"}
tellraw @a ["",{"text":"◎ "},{"selector":"@s"},{"text":" 已被救起了"}]