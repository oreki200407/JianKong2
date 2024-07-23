###################################################
# 儲存使用前的位置
# 
# Name   : store_location.mcfunction
# Path   : monitor:observe/
# As     : 使用監視器的人
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

$data modify storage jk2:data root.monitor.observe."$(uuid)".x set from entity @s Pos[0]
$data modify storage jk2:data root.monitor.observe."$(uuid)".y set from entity @s Pos[1]
$data modify storage jk2:data root.monitor.observe."$(uuid)".z set from entity @s Pos[2]
$data modify storage jk2:data root.monitor.observe."$(uuid)".rx set from entity @s Rotation[0]
$data modify storage jk2:data root.monitor.observe."$(uuid)".ry set from entity @s Rotation[1]