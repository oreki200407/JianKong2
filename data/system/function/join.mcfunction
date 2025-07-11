#第一次加入
effect clear @s
effect give @s resistance infinite 4 true
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
effect give @s weakness infinite 99 true
effect give @s blindness 3 0 true
#讓health顯示
effect give @s absorption 1 0 true

gamemode adventure @s
title @s times 0 40 0
tp @s @e[type=marker, tag=lobby_spawn, limit=1]
execute at @e[type=marker, tag=lobby_spawn, limit=1] run spawnpoint @s ~ ~ ~

title @s title {"text":"監控圍城 II", "color": "blue", "bold": true}
title @s subtitle [ {"text": "作者: 惡靈", "bold": true, "color": "green"}]

tag @s add join