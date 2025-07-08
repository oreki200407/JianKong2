###################################################
# 身為殭屍的tick
# 
# Name   : tick.mcfunction
# Path   : morph:zombie/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : oreki20
###################################################

#附近有生存者就加速
execute if entity @a[team=survivor, distance=..10, gamemode=adventure] run effect give @s speed 1 0 true