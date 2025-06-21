###################################################
# boss的bossbar
# 
# Name   : bossbar.mcfunction
# Path   : monster:boss/
# As     : boss
# At     : 打指令的玩家
# Loop   : 否
# Author : oreki20
###################################################

bossbar set jk2:boss name {"selector":"@s"}
execute store result bossbar jk2:boss max run data get entity @s Health
bossbar set jk2:boss players @a[team=survivor]