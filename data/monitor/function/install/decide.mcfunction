###################################################
# 選擇監視器，如果都被佔用了就維持reset
# 
# Name   : decide.mcfunction
# Path   : monitor:install/
# As     : 使用監視器的人
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

execute if score 監視器 lobby matches 0 run return fail

execute unless entity @e[scores={camera=1}] run return run scoreboard players set @s camera 1
execute if score 監視器 lobby matches 1 run return fail

execute unless entity @e[scores={camera=2}] run return run scoreboard players set @s camera 2
execute if score 監視器 lobby matches 2 run return fail

execute unless entity @e[scores={camera=3}] run return run scoreboard players set @s camera 3
execute if score 監視器 lobby matches 3 run return fail

execute unless entity @e[scores={camera=4}] run return run scoreboard players set @s camera 4
execute if score 監視器 lobby matches 4 run return fail

execute unless entity @e[scores={camera=5}] run return run scoreboard players set @s camera 5
execute if score 監視器 lobby matches 5 run return fail

execute unless entity @e[scores={camera=6}] run return run scoreboard players set @s camera 6
execute if score 監視器 lobby matches 6 run return fail

execute unless entity @e[scores={camera=7}] run return run scoreboard players set @s camera 7
execute if score 監視器 lobby matches 7 run return fail

execute unless entity @e[scores={camera=8}] run return run scoreboard players set @s camera 8
execute if score 監視器 lobby matches 8 run return fail

execute unless entity @e[scores={camera=9}] run scoreboard players set @s camera 9