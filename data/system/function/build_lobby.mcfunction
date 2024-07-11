#-------建造大廳-------
kill @e[tag = display]
setblock ~ ~-1 ~ structure_block{name:"system:lobby",ignoreEntities:0b,mode:"LOAD",posX:-10,posY:0,posZ:-12,sizeX:19,sizeY:7,sizeZ:23,showair:0b,showboundingbox:1b}
setblock ~ ~ ~ redstone_block
execute as @e[tag = display] run data modify entity @s Invulnerable set value 1b