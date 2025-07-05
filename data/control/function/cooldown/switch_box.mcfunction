execute if score 更換電箱-冷卻 info_monitor matches 2.. run return run scoreboard players remove 更換電箱-冷卻 info_monitor 1

execute at @e[tag=control_switch_box] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"更換電箱"},{bold:1b,click_event:{action:"run_command",command:"function control:switch_box"},text:"花費：80電力"},""]},is_waxed:1b}
scoreboard players reset 更換電箱-冷卻 info_monitor