kill @e[tag=lobby]
kill @e[tag=lobby_text]
forceload add ~ ~
setworldspawn ~6 ~ ~5

place structure game:lobby ~-10 ~-1 ~-10

scoreboard players set #mode system 1
function system:install
scoreboard objectives setdisplay sidebar edit
difficulty hard
time set day
clear @a
tellraw @a ["","\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n◎ ",{"text":"大廳","color":"gold"},"已生成完畢"]