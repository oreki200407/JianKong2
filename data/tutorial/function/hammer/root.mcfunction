###################################################
# 右鍵錘子時執行
# 
# Name   : root.mcfunction
# Path   : tutorial:hammer/
# As     : 使用錘子的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

advancement revoke @s only tutorial:hammer

#是玻璃
execute anchored eyes positioned ^ ^ ^1.5 if block ~ ~ ~ #gadget:glass run return run function tutorial:hammer/at_glass

#不是玻璃
scoreboard players set @s[scores={hammer=1..}] hammer 0
title @s actionbar {text: "請對著玻璃使用", color: "red", bold: true}