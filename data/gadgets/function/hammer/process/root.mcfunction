###################################################
# 使用錘子的進度
# 
# Name   : root.mcfunction
# Path   : gadgets:hammer/process/
# As     : 求生者
# At     : 玻璃的Position，As的Rotation和Dimension
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if score @s hammer matches 0..29 run return run function gadgets:hammer/process/upper_half
function gadgets:hammer/process/lower_half