playsound ui.button.click ambient @s
execute if entity @s[gamemode=!creative] run return run tellraw @a ["","◎ 請切換", {"text": "創造模式","color":"gold"},"來操作"]

scoreboard players add #power_switch system 1
execute if score #power_switch system matches 21.. run scoreboard players set #power_switch system 20
data merge entity @e[type=text_display,tag=money_setting,limit=1] {text:[{"bold":true,"color":"yellow","text":"               更換電箱: "},{"score":{"name":"#power_switch","objective":"system"}},{"text":"分鐘"}]}