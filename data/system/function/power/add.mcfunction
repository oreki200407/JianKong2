execute if entity @s[gamemode=!creative] run return run tellraw @a ["◎ 請切換", {"text": "創造模式","color":"gold"},"來操作"]

execute if score 更換電箱 lobby matches 0 run scoreboard players display numberformat 更換電箱 lobby styled {"color":"red"}
scoreboard players add 更換電箱 lobby 1
execute if score 更換電箱 lobby matches 21.. run scoreboard players set 更換電箱 lobby 20
data merge entity @e[type=text_display,tag=box_setting,limit=1] {text:[{"bold":true,"color":"yellow","text":"               更換電箱: "},{"color":"yellow","score":{"name":"更換電箱","objective":"lobby"}},{"text":"分鐘"}]}