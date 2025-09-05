###################################################
# 在收容箱內
# 
# Name   : contain_marker.mcfunction
# Path   : contain:escape/
# As     : 世界重生點
# At     : 收容箱內的標記，tag=contain_marker
# Loop   : 是
# Author : oreki20
###################################################

execute as @a[team=monitor, dx=0.8, dy=1, dz=0.8] run function contain:escape/player
execute as @e[tag=contain_escape, dx=0.8, dy=1, dz=0.8] positioned ~.4 ~ ~.4 run function contain:escape/check