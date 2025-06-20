###################################################
# 死透倒數的下半部
# 
# Name   : lower_half.mcfunction
# Path   : game:death/survivor/die/
# As     : 倒地的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score @s death_time matches 601..720 run return run title @s actionbar [{text: "死亡中：▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬", color: "gray"}]
execute if score @s death_time matches 721..840 run return run title @s actionbar [{text: "死亡中：▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬", color: "gray"}]
execute if score @s death_time matches 841..960 run return run title @s actionbar [{text: "死亡中：▬▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬", color: "gray"}]
execute if score @s death_time matches 961..1080 run return run title @s actionbar [{text: "死亡中：▬▬▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬▬", color: "gray"}]
execute if score @s death_time matches 1081..1200 run return run title @s actionbar [{text: "死亡中：▬▬▬▬▬▬▬▬▬", color: "gold", bold: true}, {text: "▬", color: "gray"}]
title @s actionbar [{text: "死亡中：▬▬▬▬▬▬▬▬▬▬", color: "gold", bold: true}]