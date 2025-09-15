###################################################
# 更換電箱冷卻中
# 
# Name   : switch_off.mcfunction
# Path   : control:cooldown/
# As     : 世界重生點
# At     : As
# Loop   : 是，每一秒
# Author : oreki20
###################################################

scoreboard players remove #switch_box_cd system 1
execute if score #switch_box_cd system matches 1.. at @e[tag=control_switch_box] run return run data modify block ~ ~ ~ front_text.messages[2] set value [{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#switch_box_cd",objective:"system"}}]

execute at @e[tag=control_switch_box] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"更換電箱"},{bold:1b,click_event:{action:"run_command",command:"function control:switch_box"},text:"花費：80電力"},""]},is_waxed:1b}
scoreboard players reset #switch_box_cd system