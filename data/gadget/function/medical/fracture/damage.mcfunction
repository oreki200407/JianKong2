###################################################
# 當玩家摔傷的時候執行
# 
# Name   : damage.mcfunction
# Path   : gadget:medical/fracture/
# As     : 摔傷的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

execute if score #switching system matches 1 run return run scoreboard players reset @s fracture

execute if score @s fracture matches ..399 run return run scoreboard players reset @s fracture

#已經骨折了
execute if entity @s[tag=fractured] run return run scoreboard players reset @s fracture

#骨折
playsound entity.turtle.egg_crack ambient
attribute @s movement_speed modifier add jk2:fracture -0.45 add_multiplied_total
tag @s add fractured
tellraw @s ["◎ 你", {text: "骨折", color: "gold"}, "了, 請使用夾板治療"]
scoreboard players reset @s fracture