function box:fix/fix_mode/leave
execute at @e[tag=box] run function box:use/reset
tag @e[tag=box] remove box_off