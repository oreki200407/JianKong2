playsound ui.button.click ambient @s
execute if entity @s[gamemode=!creative] run return run tellraw @a ["◎ 請切換", {"text": "創造模式","color":"gold"},"來操作"]

team leave @a[team=!spec]
execute if entity @a[team=] run function system:team_random