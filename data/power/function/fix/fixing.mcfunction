###################################################
# 正在修理發電機
# 
# Name   : fixing.mcfunction
# Path   : power:fix/
# As     : 正在修理的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

title @s actionbar ["修理進度:", {"score": {"name": "@s", "objective": "fix_progress"}}]

#進度達到10就修理成功
execute if score @s fix_progress matches 10.. run function power:fix/success

#水平移動了就失敗
execute unless predicate game:keyboard/no_wasd run return run function power:fix/fix_mode/leave

#如果是正在檢定的話 剩下的就不用管了
execute if entity @s[tag=fixing_power_check] run function power:fix/check_mode/countdown

#沒有跳躍 剩下的就不用執行了
execute unless score @s jump_fix matches 1.. run return fail

scoreboard players set @s jump_fix 0

#25%機率直接+10% 10%機率進入檢定 剩下65%什麼都不會發生
execute store result score #chance fix_progress run random value 0..19

#直接+10%
execute if score #chance fix_progress matches ..4 run return run scoreboard players add @s fix_progress 1

#檢定
execute if score #chance fix_progress matches 18.. run function power:fix/check_mode/start