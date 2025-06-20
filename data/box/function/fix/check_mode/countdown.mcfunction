###################################################
# 檢定時間倒數
# 
# Name   : countdown.mcfunction
# Path   : box:fix/check_mode/
# As     : 正在檢定的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#正在檢定
scoreboard players remove @s fix_time 5

#還有兩位數
execute if score @s fix_time matches 10.. run return run title @s subtitle ["0: ", {score: {name: "@s", objective: "fix_time"}}]

#只剩個位數
title @s subtitle ["0: 0", {score: {name: "@s", objective: "fix_time"}}]

#0秒
execute if score @s fix_time matches 0 run function box:fix/check_mode/check