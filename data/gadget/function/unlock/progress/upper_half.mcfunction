###################################################
# 顯示開鎖進度(上半部)
# 
# Name   : upper_half.mcfunction
# Path   : gadget:unlock/progress/
# As     : 使用開鎖器的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score @s unlock_progess matches 0 run return run title @s actionbar [{text: "開鎖中：", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬▬▬▬", color: "gray"}]
execute if score @s unlock_progess matches 1 run return run title @s actionbar [{text: "開鎖中：▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬▬▬", color: "gray"}]
execute if score @s unlock_progess matches 2 run return run title @s actionbar [{text: "開鎖中：▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬▬", color: "gray"}]
execute if score @s unlock_progess matches 3 run return run title @s actionbar [{text: "開鎖中：▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬", color: "gray"}]
title @s actionbar [{text: "開鎖中：▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬", color: "gray"}]