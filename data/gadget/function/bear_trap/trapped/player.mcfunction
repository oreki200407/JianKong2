###################################################
# 被捕獸夾抓到的玩家，要跳10下才能解鎖
# 
# Name   : player.mcfunction
# Path   : gadget:bear_trap/trapped/
# As     : 被捕獸夾抓到的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

title @s actionbar {text: "你正在被捕獸夾卡住", color: "red", bold: true}
#跳10次才能解除
execute if score @s jump_break matches 10 run return run function gadget:bear_trap/trapped/release

execute at @s if entity @e[type=marker, tag=bear_trap_marker, distance=..0.01] run return fail

tag @s add temp
scoreboard players operation #check_marker bear_trap = @s bear_trap
execute as @e[type=marker, tag=bear_trap_marker] at @s if score @s bear_trap = #check_marker bear_trap run tp @a[tag=temp] ~ ~ ~
tag @s remove temp