execute at @s run playsound ui.button.click master @s

execute if score @s contain_freeze matches 1 as @e[type=villager, tag=contain_villager, tag=contain, tag=freeze] run function contain:control/freeze/unfreeze
execute if score @s contain_freeze matches 2 as @e[type=villager, tag=contain_villager, tag=contain, tag=!freeze] run function contain:control/freeze/freeze
execute if score @s contain_freeze matches 3 as @e[type=skeleton, tag=contain_skeleton, tag=contain, tag=freeze] run function contain:control/freeze/unfreeze
execute if score @s contain_freeze matches 4 as @e[type=skeleton, tag=contain_skeleton, tag=contain, tag=!freeze] run function contain:control/freeze/freeze
execute if score @s contain_freeze matches 5 as @e[type=cave_spider, tag=contain_spider, tag=contain, tag=freeze] run function contain:control/freeze/unfreeze
execute if score @s contain_freeze matches 6 as @e[type=cave_spider, tag=contain_spider, tag=contain, tag=!freeze] run function contain:control/freeze/freeze
execute if score @s contain_freeze matches 7 as @e[type=zombie, tag=contain_zombie, tag=contain, tag=freeze] run function contain:control/freeze/unfreeze
execute if score @s contain_freeze matches 8 as @e[type=zombie, tag=contain_zombie, tag=contain, tag=!freeze] run function contain:control/freeze/freeze
execute if score @s contain_freeze matches 9 as @e[type=creeper, tag=contain_creeper, tag=contain, tag=freeze] run function contain:control/freeze/unfreeze
execute if score @s contain_freeze matches 10 as @e[type=creeper, tag=contain_creeper, tag=contain, tag=!freeze] run function contain:control/freeze/freeze

function contain:update_text/all
function contain:control/freeze/root