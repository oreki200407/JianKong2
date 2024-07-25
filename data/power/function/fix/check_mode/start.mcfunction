#進入檢定狀態
tag @s add fixing_power_check

#選擇QED的按鍵
execute store result score @s fix_slot store result score #slot_keybind fix_slot run random value 0..8
#為什麼keybind的slot是1到9…
execute store result storage jk2:data root.power.fix.slot_keybind int 1 run scoreboard players add #slot_keybind fix_slot 1
#title按鍵
function power:fix/check_mode/title with storage jk2:data root.power.fix

#時間
title @s subtitle "1: 00"
scoreboard players set @s fix_time 100