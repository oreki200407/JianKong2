###################################################
# 旋轉成功
# 
# Name   : success.mcfunction
# Path   : power:netwalk_game/switch/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 否
# Author : oreki20
###################################################

$item replace block ~ ~ ~ container.$(number) with magenta_glazed_terracotta[custom_data={rotate_data:{number:$(number),type:"$(type)",orientation:$(orientation)}},custom_model_data={strings:["$(type)$(orientation)"]},tooltip_display={hide_tooltip: true}]