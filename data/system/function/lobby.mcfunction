kill @e[tag=lobby]
kill @e[tag=lobby_text]
forceload add ~ ~
setworldspawn ~6 ~ ~5

setblock ~ ~-1 ~ structure_block{name:"game:lobby",ignoreEntities:0b,mode:"LOAD",posX:-10,posY:0,posZ:-10,sizeX:21,sizeY:8,sizeZ:21,showair:0b,showboundingbox:1b}
setblock ~ ~ ~ redstone_block

scoreboard players set #mode system 1
function system:install
scoreboard objectives setdisplay sidebar edit
difficulty hard
time set day
clear @a
tellraw @a ["","\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n◎ ",{"text":"大廳","color":"gold"},"已生成完畢"]