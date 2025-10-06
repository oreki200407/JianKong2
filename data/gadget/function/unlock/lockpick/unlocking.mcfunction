###################################################
# 開鎖中
# 
# Name   : unlocking.mcfunction
# Path   : gadget:unlock/
# As     : 使用開鎖器的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#移動了就失敗
execute unless predicate game:keyboard/no_input run return run function gadget:unlock/lockpick/fail

#沒有在移動 就可以繼續
execute store result score @s selected_slot run data get entity @s SelectedItemSlot
execute if score @s selected_slot = @s unlock_slot run function gadget:unlock/progress/add

#進度
execute if score @s unlock_progess matches 0..6 run return run function gadget:unlock/progress/upper_half
execute if score @s unlock_progess matches 7..13 run return run function gadget:unlock/progress/lower_half

execute if score @s unlock_progess matches 14 at @s run function gadget:unlock/lockpick/success