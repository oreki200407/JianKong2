###################################################
# 開鎖中
# 
# Name   : unlocking.mcfunction
# Path   : gadgets:unlock/
# As     : 使用開鎖器的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#移動了就失敗
execute if predicate game:moving/generic run return run function gadgets:unlock/fail

#沒有在移動 就可以繼續
execute store result score @s selected_slot run data get entity @s SelectedItemSlot
execute if score @s selected_slot = @s unlock_slot run function gadgets:unlock/progress/add

#進度
execute if score @s unlock_progess matches 0..4 run return run function gadgets:unlock/progress/upper_half
execute if score @s unlock_progess matches 5..9 run return run function gadgets:unlock/progress/lower_half

#達到100%後 要拿著才會繼續
execute if items entity @s weapon tripwire_hook[custom_data~{gadgets: "unlock"}] run function gadgets:unlock/success