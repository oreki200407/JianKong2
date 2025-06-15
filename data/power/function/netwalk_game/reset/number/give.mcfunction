$data modify block ~ ~ ~ Items[{Slot:$(number)b}].components."minecraft:custom_data".rotate_data.number set value $(number)
$execute if block ~1 ~ ~ chest run data modify block ~1 ~ ~ Items[{Slot:$(number)b}].components."minecraft:custom_data".chest2 set value 1

$execute if data block ~ ~ ~ Items[{Slot:$(number)b}].components."minecraft:custom_data" run function power:netwalk_game/reset/number/model with block ~ ~ ~ Items[{Slot:$(number)b}].components."minecraft:custom_data".rotate_data