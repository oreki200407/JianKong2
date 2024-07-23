###################################################
# 傳送到監視器
# 
# Name   : to_marker.mcfunction
# Path   : monitor:observe/
# As     : 使用監視器的人
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

$tp @s @e[type=marker, scores={camera=$(destination)}, limit=1]