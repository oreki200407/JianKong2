###################################################
# 救人倒數的上半部
# 
# Name   : lower_half.mcfunction
# Path   : game:death/player/save/
# As     : 正在救人的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score @s revive_time matches 31..36 run return run title @s actionbar [{"text": "救援中：▬▬▬▬▬", "color": "gold", "bold":  true}, {"text": "▬▬▬▬▬", "color": "gray"}]
execute if score @s revive_time matches 37..42 run return run title @s actionbar [{"text": "救援中：▬▬▬▬▬▬", "color": "gold", "bold":  true}, {"text": "▬▬▬▬", "color": "gray"}]
execute if score @s revive_time matches 43..48 run return run title @s actionbar [{"text": "救援中：▬▬▬▬▬▬▬", "color": "gold", "bold":  true}, {"text": "▬▬▬", "color": "gray"}]
execute if score @s revive_time matches 49..54 run return run title @s actionbar [{"text": "救援中：▬▬▬▬▬▬▬▬", "color": "gold", "bold":  true}, {"text": "▬▬", "color": "gray"}]
execute if score @s revive_time matches 55..60 run return run title @s actionbar [{"text": "救援中：▬▬▬▬▬▬▬▬▬", "color": "gold", "bold":  true}, {"text": "▬", "color": "gray"}]
title @s actionbar [{"text": "救援中：▬▬▬▬▬▬▬▬▬▬", "color": "gold", "bold":  true}]