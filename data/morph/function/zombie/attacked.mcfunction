###################################################
# 當變形成殭屍的玩家攻擊生存者的時候執行
# 
# Name   : attacked.mcfunction
# Path   : morph:zombie/
# As     : 變形成殭屍的玩家
# At     : 受傷的玩家
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

damage @a[tag=victim, limit=1] 3 dry_out by @s
tag @s remove zombie_skill_1