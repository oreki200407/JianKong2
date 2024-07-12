#是旁觀者就算了
execute if entity @s[gamemode=spectator] run return fail

#被抓到了
tag @s add trapped

#利用UUID當key
#儲存速度和跳躍力屬性
data modify storage jk2:data root.game.trap.data.uuid0 set from entity @s UUID[0]
function game:trap/attribute/store with storage jk2:data root.game.trap.data

#禁止移動和跳躍
attribute @s generic.movement_speed base set 0
execute if entity @s[type=player] run function game:trap/detected/player
execute if entity @s[type=!player] run function game:trap/detected/mob

return 1