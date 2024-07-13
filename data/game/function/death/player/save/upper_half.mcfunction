###################################################
# 救人倒數的上半部
# 
# Name   : upper_half.mcfunction
# Path   : game:death/player/save/
# As     : 正在救人的玩家
# At     : As
# Loop   : 是
# Author : Alex Cai
###################################################

execute if score @s revive_time matches 01..06 run return run title @s actionbar [{"text": "救援中：", "color": "gold", "bold": true},{"text": "▬▬▬▬▬▬▬▬▬▬", "color": "gray"}]
execute if score @s revive_time matches 07..12 run return run title @s actionbar [{"text": "救援中：▬", "color": "gold", "bold": true},{"text": "▬▬▬▬▬▬▬▬▬", "color": "gray"}]
execute if score @s revive_time matches 13..18 run return run title @s actionbar [{"text": "救援中：▬▬", "color": "gold", "bold": true},{"text": "▬▬▬▬▬▬▬▬", "color": "gray"}]
execute if score @s revive_time matches 19..24 run return run title @s actionbar [{"text": "救援中：▬▬▬", "color": "gold", "bold": true},{"text": "▬▬▬▬▬▬▬", "color": "gray"}]
title @s actionbar [{"text": "救援中：▬▬▬▬", "color": "gold", "bold": true}, {"text": "▬▬▬▬▬▬", "color": "gray"}]