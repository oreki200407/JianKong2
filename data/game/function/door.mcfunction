execute unless block ~ ~ ~ #doors run return run kill @s

execute if block ~ ~ ~ oak_door run data modify entity @s data.door set value oak_door
execute if block ~ ~ ~ birch_door run data modify entity @s data.door set value birch_door
execute if block ~ ~ ~ acacia_door run data modify entity @s data.door set value acacia_door
execute if block ~ ~ ~ bamboo_door run data modify entity @s data.door set value bamboo_door
execute if block ~ ~ ~ cherry_door run data modify entity @s data.door set value cherry_door
execute if block ~ ~ ~ jungle_door run data modify entity @s data.door set value jungle_door
execute if block ~ ~ ~ spruce_door run data modify entity @s data.door set value spruce_door
execute if block ~ ~ ~ warped_door run data modify entity @s data.door set value warped_door
execute if block ~ ~ ~ crimson_door run data modify entity @s data.door set value crimson_door
execute if block ~ ~ ~ mangrove_door run data modify entity @s data.door set value mangrove_door
execute if block ~ ~ ~ pale_oak_door run data modify entity @s data.door set value pale_oak_door
execute if block ~ ~ ~ dark_oak_door run data modify entity @s data.door set value dark_oak_door
execute if block ~ ~ ~ copper_door run data modify entity @s data.door set value copper_door
execute if block ~ ~ ~ waxed_copper_door run data modify entity @s data.door set value waxed_copper_door
execute if block ~ ~ ~ exposed_copper_door run data modify entity @s data.door set value exposed_copper_door
execute if block ~ ~ ~ waxed_exposed_copper_door run data modify entity @s data.door set value waxed_exposed_copper_door
execute if block ~ ~ ~ weathered_copper_door run data modify entity @s data.door set value weathered_copper_door
execute if block ~ ~ ~ waxed_weathered_copper_door run data modify entity @s data.door set value waxed_weathered_copper_door
execute if block ~ ~ ~ oxidized_copper_door run data modify entity @s data.door set value oxidized_copper_door
execute if block ~ ~ ~ waxed_oxidized_copper_door run data modify entity @s data.door set value waxed_oxidized_copper_door

execute if block ~ ~ ~ #doors[facing=north] run data modify entity @s data.facing set value north
execute if block ~ ~ ~ #doors[facing=south] run data modify entity @s data.facing set value south
execute if block ~ ~ ~ #doors[facing=west] run data modify entity @s data.facing set value west
execute if block ~ ~ ~ #doors[facing=east] run data modify entity @s data.facing set value east

execute if block ~ ~ ~ #doors[hinge=right] run data modify entity @s data.hinge set value right
execute if block ~ ~ ~ #doors[hinge=left] run data modify entity @s data.hinge set value left