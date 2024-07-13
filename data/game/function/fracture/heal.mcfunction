#沒有骨折
execute if entity @s[tag=!fractured] run return fail

#治好
attribute @s generic.movement_speed modifier remove jk2:fracture
tag @s remove fractured
tellraw @s "你治好了你的骨折！"