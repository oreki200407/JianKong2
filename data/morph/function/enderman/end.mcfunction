###################################################
# 變形成終界使者結束
# 
# Name   : end.mcfunction
# Path   : morph:enderman/
# As     : 變形成終界使者的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#清除終界珍珠
#即使enderPearlsVanishOnDeath設定為true 依然有可能在時間到後回來
execute store result score #pearl_thrower uuid0 store result score @s uuid0 run data get entity @s UUID[0]

#如果origin的UUID對上了就清除
execute as @e[type=ender_pearl] if function morph:enderman/is_remain_ender_pearl run kill