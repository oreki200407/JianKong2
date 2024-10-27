function power:fix/fix_mode/leave
execute at @e[tag=power] run function power:use/reset
tag @e[tag=power] remove power_off