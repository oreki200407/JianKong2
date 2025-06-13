###################################################
# 滅火器噴出後滅火
# 
# Name   : shoot.mcfunction
# Path   : gadget:extinguisher/
# As     : 滅火器噴出的煙霧
# At     : As
# Loop   : 遞迴
# Author : oreki20
###################################################

particle cloud ~ ~ ~ 0 0 0 0 10 force
fill ~ ~ ~ ~ ~ ~ air replace #fire

#往前
scoreboard players add @s extinguisher 1
#不是空氣 且 不是打開的門 或 已經走了6格 就結束
execute unless block ~ ~ ~ #air unless block ~ ~ ~ #doors[open=true] run return run scoreboard players reset @s extinguisher
execute if score @s extinguisher matches 6.. run return run scoreboard players reset @s extinguisher

#往前1格
execute positioned ^ ^ ^1 run function gadget:extinguisher/shoot