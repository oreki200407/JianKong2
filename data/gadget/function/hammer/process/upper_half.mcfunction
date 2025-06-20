###################################################
# 使用錘子的進度，0到29刻
# 
# Name   : upper_half.mcfunction
# Path   : gadget:hammer/process/
# As     : 使用錘子的玩家
# At     : 玻璃的Position，As的Rotation和Dimension
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score @s hammer matches 0..5 run return run title @s actionbar [{text: "修理中：", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬▬▬▬", color: "gray"}]
execute if score @s hammer matches 6..11 run return run title @s actionbar [{text: "修理中：▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬▬▬", color: "gray"}]
execute if score @s hammer matches 12..17 run return run title @s actionbar [{text: "修理中：▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬▬", color: "gray"}]
execute if score @s hammer matches 18..23 run return run title @s actionbar [{text: "修理中：▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬", color: "gray"}]
title @s actionbar [{text: "修理中：▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬", color: "gray"}]