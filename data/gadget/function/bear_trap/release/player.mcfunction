###################################################
# 釋放被捕獸夾抓到的玩家
# 
# Name   : player.mcfunction
# Path   : gadget:bear_trap/release/
# As     : 被捕獸夾抓到的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tellraw @s ["◎ 你成功掙脫了", {text: "捕獸夾", color: "gold"}]

scoreboard players operation #check_marker bear_trap = @s bear_trap
execute if entity @s[type=player] as @e[type=marker, tag=bear_trap_marker] if score @s bear_trap = #check_marker bear_trap run kill