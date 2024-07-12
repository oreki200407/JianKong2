tag @s remove trapped

#利用UUID當key
#儲存速度和跳躍力屬性
data modify storage jk2:data root.game.trap.data.uuid0 set from entity @s UUID[0]
function game:trap/attribute/get with storage jk2:data root.game.trap.data