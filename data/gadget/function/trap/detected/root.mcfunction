#是旁觀者就算了
execute if entity @s[gamemode=spectator] run return fail

#被抓到了
tag @s add trapped

#禁止移動和跳躍
attribute @s generic.movement_speed modifier add jk2:trap -1 add_multiplied_base
execute if entity @s[type=player] run function gadget:trap/detected/player
execute if entity @s[type=!player] run function gadget:trap/detected/mob

return 1