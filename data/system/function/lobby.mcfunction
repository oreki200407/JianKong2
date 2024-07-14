forceload add ~ ~
setworldspawn ~ ~ ~
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["lobby"]}
scoreboard players set @e[type=marker, tag=lobby] mode 1
function system:install

difficulty hard
time set day
clear @a
tellraw @a ["","\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n◎ ",{"text":"大廳","color":"gold"},"已生成完畢"]