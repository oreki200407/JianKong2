#清除標籤
tag @s remove fixing_power_check

#清除title
title @s title ""
title @s subtitle ""

execute store result score @s selected_slot run data get entity @s SelectedItemSlot
execute if score @s selected_slot = @s fix_slot run return run function power:fix/check_mode/success
function power:fix/check_mode/fail