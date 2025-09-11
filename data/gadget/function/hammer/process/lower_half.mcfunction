###################################################
# 使用錘子的進度，30到59刻
# 
# Name   : lower_half.mcfunction
# Path   : gadget:hammer/process/
# As     : 使用錘子的玩家
# At     : 玻璃的Position，As的Rotation和Dimension
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score @s hammer matches 30..35 run return run title @s actionbar [{text: "加固中：▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬", color: "gray"}]
execute if score @s hammer matches 36..41 run return run title @s actionbar [{text: "加固中：▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬", color: "gray"}]
execute if score @s hammer matches 42..47 run return run title @s actionbar [{text: "加固中：▬▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬", color: "gray"}]
execute if score @s hammer matches 48..53 run return run title @s actionbar [{text: "加固中：▬▬▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬", color: "gray"}]
title @s actionbar [{text: "加固中：▬▬▬▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬", color: "gray"}]