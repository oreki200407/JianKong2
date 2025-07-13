###################################################
# 進行檢定
# 
# Name   : check.mcfunction
# Path   : box:fix/check_mode/
# As     : 完成檢定的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

#清除標籤
tag @s remove fixing_box_check
scoreboard players set @s jump_fix 0

#清除title
title @s title ""
title @s subtitle ""

#檢查是否有到指定的slot
execute store result score @s selected_slot run data get entity @s SelectedItemSlot
execute if score @s selected_slot = @s fix_slot run return run function box:fix/check_mode/success
function box:fix/check_mode/fail