###################################################
# 嘗試使用錘子
# 
# Name   : at_glass.mcfunction
# Path   : gadget:hammer/
# As     : 求生者
# At     : 玻璃的Position，As的Rotation和Dimension
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if entity @s[y_rotation=-45..45] run return run function gadget:hammer/use {put_sign: "~ ~ ~-1", sign_facing: "north"}

execute if entity @s[y_rotation=45..135] run return run function gadget:hammer/use {put_sign: "~1 ~ ~", sign_facing: "east"}

execute if entity @s[y_rotation=135..-135] run return run function gadget:hammer/use {put_sign: "~ ~ ~1", sign_facing: "south"}

execute if entity @s[y_rotation=-135..-45] run return run function gadget:hammer/use {put_sign: "~-1 ~ ~", sign_facing: "west"}