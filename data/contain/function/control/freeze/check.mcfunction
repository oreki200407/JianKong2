execute at @s run playsound ui.button.click master @s

execute if score @s contain_freeze matches 01 as @e[tag=contain_villager, tag=contain, tag=freeze,  type=villager   ] run function contain:control/freeze/unfreeze
execute if score @s contain_freeze matches 02 as @e[tag=contain_villager, tag=contain, tag=!freeze, type=villager   ] run function contain:control/freeze/freeze
execute if score @s contain_freeze matches 03 as @e[tag=contain_skeleton, tag=contain, tag=freeze,  type=skeleton   ] run function contain:control/freeze/unfreeze
execute if score @s contain_freeze matches 04 as @e[tag=contain_skeleton, tag=contain, tag=!freeze, type=skeleton   ] run function contain:control/freeze/freeze
execute if score @s contain_freeze matches 05 as @e[tag=contain_spider,   tag=contain, tag=freeze,  type=cave_spider] run function contain:control/freeze/unfreeze
execute if score @s contain_freeze matches 06 as @e[tag=contain_spider,   tag=contain, tag=!freeze, type=cave_spider] run function contain:control/freeze/freeze
execute if score @s contain_freeze matches 07 as @e[tag=contain_zombie,   tag=contain, tag=freeze,  type=zombie     ] run function contain:control/freeze/unfreeze
execute if score @s contain_freeze matches 08 as @e[tag=contain_zombie,   tag=contain, tag=!freeze, type=zombie     ] run function contain:control/freeze/freeze
execute if score @s contain_freeze matches 09 as @e[tag=contain_creeper,  tag=contain, tag=freeze,  type=creeper    ] run function contain:control/freeze/unfreeze
execute if score @s contain_freeze matches 10 as @e[tag=contain_creeper,  tag=contain, tag=!freeze, type=creeper    ] run function contain:control/freeze/freeze

function contain:update_text/all
function contain:control/freeze/root