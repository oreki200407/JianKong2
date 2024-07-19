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
execute if predicate {condition: "entity_properties", entity: "this", predicate: {movement: {speed: {min: 0.1}}}} run return run function gadget:unlock/fail

#沒有在移動 就可以繼續
execute store result score @s selected_slot run data get entity @s SelectedItemSlot
execute if score @s selected_slot = @s unlock_slot run function gadget:unlock/progress/add

#進度
execute if score @s unlock_progess matches 0..4 run return run function gadget:unlock/progress/upper_half
execute if score @s unlock_progess matches 5..9 run return run function gadget:unlock/progress/lower_half

#達到100%後 要拿著才會繼續
execute if items entity @s weapon iron_axe[custom_data~{gadget: "unlock"}] run function gadget:unlock/success