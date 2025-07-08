###################################################
# 恢復bossbar
# 
# Name   : restore_bossbar.mcfunction
# Path   : game:join/
# As     : 加入的玩家
# At     : 世界重生點
# Loop   : 否
# Author : oreki20
###################################################

execute if score #mode system matches 4 run bossbar set jk2:prepare players @a
execute if score #mode system matches 3 run bossbar set jk2:time players @a