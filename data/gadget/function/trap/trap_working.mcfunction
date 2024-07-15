###################################################
# 捕獸夾的核心函數
# 
# Name   : trap_working.mcfunction
# Path   : gadget:trap/
# As     : 捕獸夾方塊展示實體
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#1代表陷阱啟動成功
execute store success score @s trap at @s align xyz as @n[type=#gadget:trap_can_affect, tag=!trapped, dx=0, dy=0, dz=0] run function gadget:trap/detected/root

#啟動成功就可以清除了
kill @s[scores={trap=1}]