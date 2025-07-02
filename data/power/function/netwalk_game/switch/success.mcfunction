###################################################
# 旋轉成功
# 
# Name   : success.mcfunction
# Path   : power:netwalk_game/switch/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game 或 ~1 ~ ~
# Loop   : 否
# Author : oreki20
###################################################

$item replace block ~ ~ ~ container.$(number) with magenta_glazed_terracotta[custom_data={rotate_data:{number:$(number),type:"$(type)",orientation:$(orientation)}},custom_model_data={strings:["$(type)$(orientation)"]},tooltip_display={hide_tooltip: true}]

execute at @e[type=marker, tag=netwalk_game, limit=1] run function power:netwalk_game/check_win/root

#修復成功
execute at @e[type=marker, tag=netwalk_game, limit=1] unless items block ~ ~ ~ container.* *[custom_data~{pass: false}] unless items block ~1 ~ ~ container.* *[custom_data~{pass: false}] run function power:fixed