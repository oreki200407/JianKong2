execute if entity @s[gamemode=!creative] run return run tellraw @s ["◎ 請切換", {translate: "gameMode.creative","color":"gold"},"來操作"]

team leave @a[team=!spec]
execute if entity @a[team=] run function system:team_random