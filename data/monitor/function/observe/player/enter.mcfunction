function monitor:observe/player/store_location with storage jk2:data root.monitor.observe.player
tag @s add using_camera
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 4 true
effect give @s weakness infinite 99 true
attribute @s scale modifier add jk2:monitor -0.9 add_value