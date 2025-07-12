###################################################
# 使用醫療箱
# 
# Name   : use.mcfunction
# Path   : gadget:medical/medkit/
# As     : 使用醫療箱的玩家
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

execute as @a[team=survivor, distance=..5] run function gadget:medical/medkit/radius_survivor
advancement revoke @s only gadget:medkit