###################################################
# 捕獸夾的核心函數
# 
# Name   : trap_working.mcfunction
# Path   : gadget:bear_trap/
# As     : 捕獸夾方塊展示實體
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score #switching system matches 1 run return fail

#1代表陷阱啟動成功
execute store success score @s bear_trap at @s as @e[team=monitor, tag=monster, dx=0, dy=0, dz=0, type=!player] run function gadget:bear_trap/detected/root

#啟動成功就可以清除了
execute if score @s bear_trap matches 1 run return run kill

#1代表陷阱啟動成功
execute store success score @s bear_trap at @s as @a[gamemode=!spectator, dx=0, dy=0, dz=0] run function gadget:bear_trap/detected/root

#啟動成功就可以清除了
kill @s[scores={bear_trap=1}]