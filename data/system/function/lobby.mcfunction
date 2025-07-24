gamemode creative @s
kill @e[type=marker,tag=lobby]
kill @e[type=marker,tag=lobby_spawn]
kill @e[tag=lobby_text]
forceload add ~ ~
setworldspawn ~6 ~ ~5

execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["lobby"]}
place template game:lobby ~-10 ~-1 ~-10

function system:install
execute at @e[tag=control_panel] run function edit:enter
difficulty hard
time set day
clear @a
tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n◎ ", {text: "大廳", "color":"gold"}, "已生成完畢"]