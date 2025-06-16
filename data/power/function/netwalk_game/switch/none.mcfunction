###################################################
# 拿到非遊戲的格子物品
# 
# Name   : none.mcfunction
# Path   : power:netwalk_game/switch/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 否
# Author : oreki20
###################################################

execute store success score @s netwalk_game run clear @s magenta_glazed_terracotta[custom_model_data={strings:["none"]}]
$execute if data storage jk2:data root.monitor.netwalk_game.chest2 as @a[scores={netwalk_game=1}] run return run item replace block ~1 ~ ~ container.$(number) with magenta_glazed_terracotta[custom_data={rotate_data:{number:$(number)},chest2:1},custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]
$execute as @a[scores={netwalk_game=1}] run item replace block ~ ~ ~ container.$(number) with magenta_glazed_terracotta[custom_data={rotate_data:{number:$(number)}},custom_model_data={strings:["none"]},tooltip_display={hide_tooltip: true}]