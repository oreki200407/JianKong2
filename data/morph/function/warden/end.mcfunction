###################################################
# 變形成伏守者結束
# 
# Name   : end.mcfunction
# Path   : morph:warden/
# As     : 變形成伏守者的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

effect clear @s blindness
effect clear @s strength
bossbar set jk2:distance players
attribute @s movement_speed modifier remove jk2:warden
kill @e[type=marker, tag=sonic_boom]