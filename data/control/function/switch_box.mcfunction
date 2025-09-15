###################################################
# 更換電箱
# 
# Name   : switch_box.mcfunction
# Path   : control:
# As     : 世界重生點
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

execute unless score #mode system matches 3 run return fail
execute if score #switching system matches 1 run return fail

execute unless score 電力 info_monitor matches 80.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "更換電箱", "color":"gold"}]

scoreboard players remove 電力 info_monitor 80
scoreboard players add #switch_box_cd system 300

setblock ~ ~ ~ dark_oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,color:"white",text:"更換電箱"},[{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#switch_box_cd",objective:"system"}}],""]},is_waxed:1b}
playsound block.piston.extend
#從所有電箱點位中挑一個新的出來
execute as @e[type=armor_stand, tag=box_point, tag=!box, sort=random, limit=1] at @s run function box:switch/new_box