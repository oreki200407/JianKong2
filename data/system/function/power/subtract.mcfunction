execute if entity @s[gamemode=!creative] run return run tellraw @s ["◎ 請切換", {translate: "gameMode.creative","color":"gold"},"來操作"]

scoreboard players remove 更換電箱 lobby 1
execute if score 更換電箱 lobby matches ..-1 run scoreboard players set 更換電箱 lobby 0
execute if score 更換電箱 lobby matches 0 run scoreboard players display numberformat 更換電箱 lobby fixed {"color":"red",text:"關閉"}
execute if score 更換電箱 lobby matches 0 run return run data merge entity @e[type=text_display,tag=box_setting,limit=1] {text:[{"bold":true,"color":"yellow","text":"               更換電箱: 關閉"}]}
data merge entity @e[type=text_display,tag=box_setting,limit=1] {text:[{"bold":true,"color":"yellow","text":"               更換電箱: "},{"color":"yellow","score":{"name":"更換電箱","objective":"lobby"}},{"text":"分鐘"}]}