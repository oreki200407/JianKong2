###################################################
# 子彈可以穿過的方塊
# 
# Name   : can_through.mcfunction
# Path   : gun:
# As     : 子彈
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

execute if block ~ ~ ~ #doors[open=true] run return 100
execute if block ~ ~ ~ #fence_gates[open=true] run return 100
execute if block ~ ~ ~ snow[layers=1] run return 100
execute if block ~ ~ ~ snow[layers=2] run return 100
return run execute if block ~ ~ ~ #gun:can_through