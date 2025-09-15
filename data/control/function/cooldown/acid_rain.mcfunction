scoreboard players remove #acid_rain_cd system 1
execute if score #acid_rain_cd system matches 1.. at @e[tag=control_acid_rain] run return run data modify block ~ ~ ~ front_text.messages[2] set value [{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#acid_rain_cd",objective:"system"}}]

execute at @e[tag=control_acid_rain] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"釋放酸雨"},{bold:1b,click_event:{action:"run_command",command:"function control:acid_rain/use"},text:"花費：60電力"},""]},is_waxed:1b}
scoreboard players reset #acid_rain_cd system