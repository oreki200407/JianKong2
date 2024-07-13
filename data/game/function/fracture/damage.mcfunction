advancement revoke @s only game:fall_damage

#還沒進入3 就結束
execute unless score @e[type=marker, tag=lobby, limit=1] mode matches 3 run return fail

#已經骨折了
execute if entity @s[tag=fractured] run return fail

#骨折
attribute @s generic.movement_speed modifier add jk2:fracture -0.3 add_multiplied_total
tag @s add fractured
tellraw @s "你骨折了！"