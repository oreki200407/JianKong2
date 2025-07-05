execute if score 釋放毒氣-冷卻 info_monitor matches 2.. run return run scoreboard players remove 釋放毒氣-冷卻 info_monitor 1

execute at @e[tag=control_poison] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"釋放毒氣"},{bold:1b,click_event:{action:"run_command",command:"function control:poison/use"},text:"花費：70電力"},""]},is_waxed:1b}
scoreboard players reset 釋放毒氣-冷卻 info_monitor