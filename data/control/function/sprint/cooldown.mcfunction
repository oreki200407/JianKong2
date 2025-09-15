###################################################
# 禁止奔跑冷卻中
# 
# Name   : cooldown.mcfunction
# Path   : control:sprint/
# As     : 世界重生點
# At     : As
# Loop   : 是，每一秒
# Author : oreki20
###################################################

scoreboard players remove #sprint_cd system 1
execute if score #sprint_cd system matches 1.. at @e[type=marker, tag=control_sprint] run return run data modify block ~ ~ ~ front_text.messages[2] set value [{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#sprint_cd",objective:"system"}}]

execute at @e[type=marker, tag=control_sprint] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"禁止奔跑"},{bold:1b,click_event:{action:"run_command",command:"function control:sprint/use"},text:"花費：80電力"},""]},is_waxed:1b}
scoreboard players reset #sprint_cd system