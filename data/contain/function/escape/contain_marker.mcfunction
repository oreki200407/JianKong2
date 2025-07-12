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

execute as @a[team=monitor, distance=..0.5] run function contain:escape/player
execute as @e[tag=contain_escape, distance=..0.5] run function contain:escape/check