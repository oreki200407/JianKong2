execute if score 鐵門上鎖-冷卻 info_monitor matches 2.. run return run scoreboard players remove 鐵門上鎖-冷卻 info_monitor 1

execute at @e[tag=control_lock_door] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"鐵門上鎖"},{bold:1b,click_event:{action:"run_command",command:"function control:lock_door/use"},text:"花費：50電力"},""]},is_waxed:1b}
scoreboard players reset 鐵門上鎖-冷卻 info_monitor