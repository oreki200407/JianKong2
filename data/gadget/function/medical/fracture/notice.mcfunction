###################################################
# 正在骨折的時候
# 
# Name   : notice.mcfunction
# Path   : gadget:medical/fracture/
# As     : 有骨折的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

execute if predicate tick:2_seconds run return run title @s actionbar {text: "你骨折了, 請使用夾板治療", color: "red", "bold": true}

title @s[predicate=tick:1_second] actionbar {text: "你骨折了, 請使用夾板治療", color: "dark_red", "bold": true}