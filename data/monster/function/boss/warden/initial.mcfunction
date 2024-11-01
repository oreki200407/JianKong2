###################################################
# 伏守者boss初始化
# 
# Name   : initial.mcfunction
# Path   : monster:boss/warden/
# As     : 伏守者boss
# At     : 打指令的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

execute store result entity @s attributes[{id: "minecraft:max_health"}].base float 50 store result entity @s Health float 50 if entity @a[team=survivor]
function monster:boss/bossbar