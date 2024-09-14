#物品偵測
execute if items entity @s weapon.mainhand purple_dye run return run function monitor:observe/player/summon/trap
function monitor:observe/player/summon/monster