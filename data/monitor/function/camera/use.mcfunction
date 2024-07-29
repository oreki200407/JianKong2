###################################################
# 右鍵監視器
# 
# Name   : use.mcfunction
# Path   : monitor:camera/
# As     : 安裝監視器的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only monitor:camera/use

scoreboard players reset @s camera
function monitor:camera/decide
#如果沒有分數就結束
execute unless score @s camera = @s camera run return fail

#允許使用監視器介面
gamemode spectator
scoreboard players enable @s camera_interface
tp @s @e[type=marker, tag=spawn_survivor, limit=1]
tellraw @s ["監視器(", {"score": {"name": "@s", "objective": "camera"}}, ")\n", {"text": "✅", "clickEvent": {"action": "run_command", "value": "/trigger camera_interface set 1"}}, "        ", {"text": "❎", "clickEvent": {"action": "run_command", "value": "/trigger camera_interface set 2"}}]