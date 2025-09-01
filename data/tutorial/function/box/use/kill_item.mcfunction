execute at @e[type=marker,tag=tutorial_box] run function tutorial:box/use/reset
execute as @e[type=item, distance=..1.5] if items entity @s contents diamond[custom_data~{type:"tutorial_box"}] run kill