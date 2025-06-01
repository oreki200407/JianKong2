function box:fix/fix_mode/leave
title @s actionbar [{"text": "修理中：▬▬▬▬▬▬▬▬▬▬", "color": "gold", "bold": true}]
execute at @e[tag=box] run function box:use/reset
tag @e[tag=box] remove box_off