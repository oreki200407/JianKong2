execute if score 關閉電箱-冷卻 info_monitor matches 2.. run return run scoreboard players remove 關閉電箱-冷卻 info_monitor 1

execute at @e[tag=control_box_off] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"關閉電箱"},{bold:1b,click_event:{action:"run_command",command:"function control:box_off"},text:"花費：50電力"},""]},is_waxed:1b}
scoreboard players reset 關閉電箱-冷卻 info_monitor