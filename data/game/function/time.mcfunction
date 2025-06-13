schedule function game:time 1s
execute if score #mode system matches 4 store result bossbar jk2:prepare value run return run scoreboard players add #prepare system 1
execute if score #mode system matches 3 store result bossbar jk2:time value run return run scoreboard players add #time system 1

execute if score 更換電箱 lobby matches 1.. run function box:switch/auto

execute if score 水管爆裂 info_monitor matches 0.. run scoreboard players add 水管爆裂 info_monitor 1
execute if score 水管爆裂 info_monitor matches 180.. run function box:use/success/water_end

execute if score 禁止監控 info_monitor matches 0.. run scoreboard players add 禁止監控 info_monitor 1
execute if score 禁止監控 info_monitor matches 180.. run function box:use/success/monitor_end

execute if score 釋放酸雨-冷卻 info_monitor matches 1.. run scoreboard players remove 釋放酸雨-冷卻 info_monitor 1
execute if score 釋放酸雨-冷卻 info_monitor matches 0 at @e[tag=control_acid_rain] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"釋放酸雨"},{bold:1b,click_event:{action:"run_command",command:"function control:acid_rain/use"},text:"花費：60電力"},""]},is_waxed:1b}
execute if score 釋放毒氣-冷卻 info_monitor matches 1.. run scoreboard players remove 釋放毒氣-冷卻 info_monitor 1
execute if score 釋放毒氣-冷卻 info_monitor matches 0 at @e[tag=control_poison] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"釋放毒氣"},{bold:1b,click_event:{action:"run_command",command:"function control:poison/use"},text:"花費：70電力"},""]},is_waxed:1b}
execute if score 鐵門上鎖-冷卻 info_monitor matches 1.. run scoreboard players remove 鐵門上鎖-冷卻 info_monitor 1
execute if score 鐵門上鎖-冷卻 info_monitor matches 0 at @e[tag=control_lock_door] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"鐵門上鎖"},{bold:1b,click_event:{action:"run_command",command:"function control:lock_door/use"},text:"花費：50電力"},""]},is_waxed:1b}
execute if score 更換電箱-冷卻 info_monitor matches 1.. run scoreboard players remove 更換電箱-冷卻 info_monitor 1
execute if score 更換電箱-冷卻 info_monitor matches 0 at @e[tag=control_switch_box] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"更換電箱"},{bold:1b,click_event:{action:"run_command",command:"function control:switch_box"},text:"花費：80電力"},""]},is_waxed:1b}
execute if score 關閉電箱-冷卻 info_monitor matches 1.. run scoreboard players remove 關閉電箱-冷卻 info_monitor 1
execute if score 關閉電箱-冷卻 info_monitor matches 0 at @e[tag=control_box_off] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"關閉電箱"},{bold:1b,click_event:{action:"run_command",command:"function control:box_off"},text:"花費：50電力"},""]},is_waxed:1b}
execute if score 禁止奔跑-冷卻 info_monitor matches 1.. run scoreboard players remove 禁止奔跑-冷卻 info_monitor 1
execute if score 禁止奔跑-冷卻 info_monitor matches 0 at @e[tag=control_sprint] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"禁止奔跑"},{bold:1b,click_event:{action:"run_command",command:"function control:sprint/use"},text:"花費：70電力"},""]},is_waxed:1b}

execute if score 酸雨 info_survivor matches 1.. run scoreboard players remove 酸雨 info_survivor 1
execute if score 毒氣 info_survivor matches 1.. run scoreboard players remove 毒氣 info_survivor 1
execute if score 禁止奔跑 info_survivor matches 1.. run scoreboard players remove 禁止奔跑 info_survivor 1

execute as @e[tag=contain] run function contain:random