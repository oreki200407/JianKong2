###################################################
# 決定custom_model_data
# 
# Name   : give.mcfunction
# Path   : power:netwalk_game/reset/number/
# As     : 發電機標記，tag=netwalk_game
# At     : As，或是As的~1 ~ ~
# Loop   : 是
# Author : oreki20
###################################################

$item modify block ~ ~ ~ container.$(number) {function: "set_custom_data", tag: "{rotate_data: {number: $(number)}}"}
$execute if block ~1 ~ ~ chest run item modify block ~1 ~ ~ container.$(number) {function: "set_custom_data", tag: {chest2: 1}}

$execute if data block ~ ~ ~ Items[{Slot:$(number)b}].components."minecraft:custom_data" run function power:netwalk_game/reset/number/model with block ~ ~ ~ Items[{Slot:$(number)b}].components."minecraft:custom_data".rotate_data