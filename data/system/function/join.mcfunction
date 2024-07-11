#第一次加入
effect clear @s
effect give @s resistance infinite 100 true
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
effect give @s weakness infinite 100 true
effect give @s blindness 3 0 true

gamemode adventure @s
title @s times 10 40 10
tp @s @n[type=marker,tag=lobby]
execute at @n[type=marker,tag=lobby] run spawnpoint @s ~ ~ ~

title @s title {"text":"監控圍城 II", "color": "red", "bold": true}
title @s subtitle ["", {"text": "作者: 惡靈", "bold": true, "color": "green"}]

tag @s add join