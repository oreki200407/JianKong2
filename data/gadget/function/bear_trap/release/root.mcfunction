###################################################
# 釋放被捕獸夾抓到的實體
# 
# Name   : root.mcfunction
# Path   : gadget:bear_trap/release/
# As     : 被捕獸夾抓到的實體
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s remove trapped

#釋放
attribute @s movement_speed modifier remove jk2:bear_trap
attribute @s jump_strength modifier remove jk2:bear_trap
execute at @s run playsound block.copper_door.open ambient @a

execute if entity @s[type=player] run function gadget:bear_trap/release/player
scoreboard players reset @s bear_trap