execute if score 釋放酸雨-冷卻 info_monitor matches 2.. run return run scoreboard players remove 釋放酸雨-冷卻 info_monitor 1

execute at @e[tag=control_acid_rain] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"釋放酸雨"},{bold:1b,click_event:{action:"run_command",command:"function control:acid_rain/use"},text:"花費：60電力"},""]},is_waxed:1b}
scoreboard players reset 釋放酸雨-冷卻 info_monitor