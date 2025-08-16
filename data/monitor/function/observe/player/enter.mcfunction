function monitor:observe/player/store_location with storage jk2:data root.monitor.observe.player
tag @s add using_camera
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 4 true
effect give @s weakness infinite 99 true
attribute @s scale modifier add jk2:observe -0.9 add_value
attribute @s block_interaction_range modifier add jk2:observe -4.5 add_value
attribute @s entity_interaction_range modifier add jk2:observe -3 add_value