execute if score 禁止奔跑-冷卻 info_monitor matches 2.. run return run scoreboard players remove 禁止奔跑-冷卻 info_monitor 1

execute at @e[tag=control_sprint] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"禁止奔跑"},{bold:1b,click_event:{action:"run_command",command:"function control:sprint/use"},text:"花費：80電力"},""]},is_waxed:1b}
scoreboard players reset 禁止奔跑-冷卻 info_monitor