###################################################
# 右鍵監視器
# 
# Name   : use.mcfunction
# Path   : monitor:install/
# As     : 安裝監視器的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only monitor:install/use

execute if score @s camera_cooldown matches 1.. run return fail
scoreboard players set @s camera_cooldown 10

scoreboard players reset @s camera
function monitor:install/decide
#如果沒有分數就結束
execute unless score @s camera = @s camera run return run tellraw @s ["◎ 所有監視器已", {text: "安裝完畢", color: "gold"}, "或", {text: "正在安裝", color: "gold"}]

#允許使用監視器介面
gamemode spectator
scoreboard players enable @s camera_interface
tp @s @e[type=marker, tag=spawn_survivor, limit=1]
tellraw @s ["——————————\n", {text:"監視器", color: "gold"}, {score: {name: "@s", objective: "camera"}, color: "gold"}, "\n", {text: "✔", color: "green", click_event: {action: "run_command", command: "/trigger camera_interface set 1"}}, "        ", {text: "✘", color: "red", click_event: {action: "run_command", command: "/trigger camera_interface set 2"}}, "\n——————————"]