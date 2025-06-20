###################################################
# 顯示開鎖進度(下半部)
# 
# Name   : lower_half.mcfunction
# Path   : gadget:unlock/progress/
# As     : 使用開鎖器的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score @s hammer matches 5 run return run title @s actionbar [{text: "開鎖中：▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬", color: "gray"}]
execute if score @s hammer matches 6 run return run title @s actionbar [{text: "開鎖中：▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬", color: "gray"}]
execute if score @s hammer matches 7 run return run title @s actionbar [{text: "開鎖中：▬▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬", color: "gray"}]
execute if score @s hammer matches 8 run return run title @s actionbar [{text: "開鎖中：▬▬▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬", color: "gray"}]
title @s actionbar [{text: "開鎖中：▬▬▬▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬", color: "gray"}]