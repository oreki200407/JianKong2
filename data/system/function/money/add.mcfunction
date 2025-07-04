execute if entity @s[gamemode=!creative] run return run tellraw @s ["◎ 請切換", {translate: "gameMode.creative","color":"gold"},"來操作"]

scoreboard players add 初始資金 lobby 50
execute if score 初始資金 lobby matches 550.. run scoreboard players set 初始資金 lobby 500
data merge entity @e[type=text_display,tag=money_setting,limit=1] {text:[{"bold":true,"color":"yellow","text":"               初始資金: "},{"score":{"name":"初始資金","objective":"lobby"}}]}