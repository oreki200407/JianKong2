###################################################
# 玩家被收容
# 
# Name   : player.mcfunction
# Path   : contain:escape/
# As     : 被收容的監控者
# At     : 收容箱內的標記，tag=contain_marker
# Loop   : 否
# Author : oreki20
###################################################

#---玩家被關---
tellraw @a[team=monitor] ["◎ ",{selector:"@s",color:gold},"被關進收容櫃內, 電力",{text:"減少30",color:gold}]
scoreboard players remove 電力 info_monitor 30
tp @s @e[type=marker,tag=lobby,limit=1]