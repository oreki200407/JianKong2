###################################################
# 變成鐵門
# 
# Name   : lock.mcfunction
# Path   : control:lock_door/
# As     : 位於門的標記
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

$setblock ~ ~ ~ iron_door[half=lower,facing=$(facing),hinge=$(hinge)] destroy
$setblock ~ ~1 ~ iron_door[half=upper,facing=$(facing),hinge=$(hinge)] destroy