title @s actionbar ["修理進度:", {"score": {"name": "@s", "objective": "fix_progress"}}]

#水平移動了就失敗
execute if predicate game:moving/horizontal run return run function power:fix/fix_mode/leave

#如果是正在檢定的話 剩下的就不用管了
execute if entity @s[tag=fixing_power_check] run function power:fix/check_mode/countdown

#沒有跳躍 剩下的就不用執行了
execute unless score @s jump_fix matches 1.. run return fail

scoreboard players set @s jump_fix 0

#10%機率直接+10% 5%機率進入檢定 剩下85%什麼都不會發生
execute store result score #chance fix_progress run random value 0..19

#直接+10%
execute if score #chance fix_progress matches ..1 run return run scoreboard players add @s fix_progress 1

#檢定
execute if score #chance fix_progress matches 2 run function power:fix/check_mode/start