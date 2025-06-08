###################################################
# 滅火器噴出後滅火
# 
# Name   : shoot.mcfunction
# Path   : gadget:grenade/
# As     : 滅火器噴出的煙霧
# At     : As
# Loop   : 遞迴
# Author : oreki20
###################################################

particle cloud ~ ~ ~ 0 0 0 0 10 force
fill ~ ~ ~ ~ ~ ~ air replace #fire

#往前
scoreboard players add @s flamethrower 1
#不是空氣 且 不是打開的門 或 已經走了6格 就結束
execute unless block ~ ~ ~ #air unless block ~ ~ ~ #doors[open=true] run return run scoreboard players reset @s flamethrower
execute if score @s flamethrower matches 6.. run return run scoreboard players reset @s flamethrower

#往前1格
execute positioned ^ ^ ^1 run function gadget:extinguisher/shoot