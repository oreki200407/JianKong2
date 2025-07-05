###################################################
# 釋放被捕獸夾抓到的實體
# 
# Name   : release.mcfunction
# Path   : gadget:bear_trap/trapped/
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
tellraw @s ["◎ 你成功掙脫了", {text: "捕獸夾", color: "gold"}]

scoreboard players operation #check_marker bear_trap = @s bear_trap
execute as @e[type=marker,tag=baer_trap_marker] if score @s bear_trap = #check_marker bear_trap run kill @s
scoreboard players reset @s bear_trap