scoreboard players remove #box_off_cd system 1
execute if score #box_off_cd system matches 1.. at @e[tag=control_box_off] run return run data modify block ~ ~ ~ front_text.messages[2] set value [{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#box_off_cd",objective:"system"}}]

execute at @e[tag=control_box_off] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"關閉電箱"},{bold:1b,click_event:{action:"run_command",command:"function control:box_off"},text:"花費：50電力"},""]},is_waxed:1b}
scoreboard players reset #box_off_cd system