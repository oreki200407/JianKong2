$summon block_display ~ ~ ~ {Tags:["check_display","check_poison"],Glowing:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[$(dx)f,$(dy)f,$(dz)f]},block_state:{Name:"minecraft:tinted_glass"}}

summon text_display ~ ~ ~ {billboard:"vertical",Tags:["check_display","check_poison"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]}}
data modify entity @n[type=text_display,tag=check_poison] text set from entity @s CustomName
$tp @n[type=text_display,tag=check_poison] $(particle_x) $(particle_y) $(particle_z)