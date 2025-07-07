###################################################
# 死透倒數的上半部
# 
# Name   : upper_half.mcfunction
# Path   : game:death/survivor/die/
# As     : 倒地的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

execute unless entity @a[team=survivor,tag=!fall_down] if score @s death_time matches 50 run return run function game:death/survivor/save/alone
execute if score @s death_time matches 1..120 run return run title @s actionbar [{text: "死亡中：", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬▬▬▬", color: "gray"}]
execute if score @s death_time matches 121..240 run return run title @s actionbar [{text: "死亡中：▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬▬▬", color: "gray"}]
execute if score @s death_time matches 241..360 run return run title @s actionbar [{text: "死亡中：▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬▬", color: "gray"}]
execute if score @s death_time matches 361..480 run return run title @s actionbar [{text: "死亡中：▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬▬", color: "gray"}]
title @s actionbar [{text: "死亡中：▬▬▬▬", color: "gold", bold: true}, {text: "▬▬▬▬▬▬", color: "gray"}]