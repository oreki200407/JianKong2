#物品偵測
execute if items entity @s weapon purple_dye run return run function monitor:observe/player/summon/trap/success with entity @s SelectedItem.components."minecraft:custom_data"
function monitor:observe/player/summon/monster/success