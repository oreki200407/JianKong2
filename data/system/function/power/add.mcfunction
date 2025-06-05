playsound ui.button.click ambient @s
execute if entity @s[gamemode=!creative] run return run tellraw @a ["◎ 請切換", {"text": "創造模式","color":"gold"},"來操作"]

scoreboard players add 更換電箱 lobby 1
execute if score 更換電箱 lobby matches 21.. run scoreboard players set 更換電箱 lobby 20
data merge entity @e[type=text_display,tag=money_setting,limit=1] {text:[{"bold":true,"color":"yellow","text":"               更換電箱: "},{"score":{"name":"#box_switch","objective":"system"}},{"text":"分鐘"}]}