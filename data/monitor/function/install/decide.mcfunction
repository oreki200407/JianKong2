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

execute unless entity @a[scores={camera=1}] run return run scoreboard players set @s camera 1
execute unless entity @a[scores={camera=2}] run return run scoreboard players set @s camera 2
execute unless entity @a[scores={camera=3}] run return run scoreboard players set @s camera 3
execute unless entity @a[scores={camera=4}] run return run scoreboard players set @s camera 4
execute unless entity @a[scores={camera=5}] run return run scoreboard players set @s camera 5
execute unless entity @a[scores={camera=6}] run scoreboard players set @s camera 6