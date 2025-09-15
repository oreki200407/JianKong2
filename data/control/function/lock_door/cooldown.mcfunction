###################################################
# 鐵門上鎖冷卻中
# 
# Name   : cooldown.mcfunction
# Path   : control:lock_door/
# As     : 世界重生點
# At     : As
# Loop   : 是，每一秒
# Author : oreki20
###################################################

scoreboard players remove #lock_door_cd system 1
execute if score #lock_door_cd system matches 1.. at @e[type=marker, tag=control_lock_door] run return run data modify block ~ ~ ~ front_text.messages[2] set value [{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#lock_door_cd",objective:"system"}}]

execute at @e[type=marker, tag=control_lock_door] run setblock ~ ~ ~ oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,text:"鐵門上鎖"},{bold:1b,click_event:{action:"run_command",command:"function control:lock_door/use"},text:"花費：50電力"},""]},is_waxed:1b}
scoreboard players reset #lock_door_cd system