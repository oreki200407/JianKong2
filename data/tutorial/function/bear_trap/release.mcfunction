###################################################
# 釋放被捕獸夾抓到的實體
# 
# Name   : root.mcfunction
# Path   : tutorial:bear_trap/release/
# As     : 被捕獸夾抓到的實體
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s remove tutorial_trapped

#釋放
attribute @s movement_speed modifier remove jk2:bear_trap
attribute @s jump_strength modifier remove jk2:bear_trap
execute at @s run playsound block.copper_door.open master @a

tellraw @s ["◎ 你成功掙脫了", {text: "捕獸夾", color: "gold"}]

scoreboard players operation #check_marker bear_trap = @s bear_trap
execute if entity @s[type=player] as @e[type=marker, tag=bear_trap_marker] if score @s bear_trap = #check_marker bear_trap run kill

scoreboard players reset @s bear_trap