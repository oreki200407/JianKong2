###################################################
# 捕獸夾標記的初始化
# 
# Name   : player.mcfunction
# Path   : gadget:bear_trap/detected/
# As     : 捕獸夾標記
# At     : 捕獸夾抓到的玩家 ~ ~-.375 ~
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s add bear_trap_marker
#流水號 + 1
return run scoreboard players add #marker_number bear_trap 1