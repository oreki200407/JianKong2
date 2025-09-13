###################################################
# 收容系統
# 
# Name   : root.mcfunction
# Path   : contain:control/
# As     : 收容互動實體，tag=contain_control
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

execute if score #switching system matches 1 run return run data remove entity @s interaction

execute on target run playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 2

execute if entity @s[tag=contain_add_temperature] run function contain:control/add_temperature
execute if entity @s[tag=contain_subtract_temperature] run function contain:control/subtract_temperature
execute if entity @s[tag=contain_feed] run function contain:control/feed
execute if entity @s[tag=contain_freeze] run function contain:control/freeze/root

data remove entity @s interaction