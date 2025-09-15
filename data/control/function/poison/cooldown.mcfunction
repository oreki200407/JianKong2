###################################################
# 釋放毒氣冷卻中
# 
# Name   : cooldown.mcfunction
# Path   : control:poison/
# As     : 世界重生點
# At     : As
# Loop   : 是，每一秒
# Author : oreki20
###################################################

scoreboard players remove #poison_cd system 1
execute if score #poison_cd system matches 1.. at @e[type=marker, tag=control_poison] run return run data modify block ~ ~ ~ front_text.messages[2] set value [{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#poison_cd",objective:"system"}}]

execute at @e[type=marker, tag=control_poison] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"釋放毒氣"},{bold:1b,click_event:{action:"run_command",command:"function control:poison/use"},text:"花費：70電力"},""]},is_waxed:1b}
scoreboard players reset #poison_cd system