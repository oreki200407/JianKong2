###################################################
# 使用監視器中
# 
# Name   : watching.mcfunction
# Path   : monitor:observe/player/
# As     : 使用監視器的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#移動了就回去
execute if predicate game:moving/generic run function monitor:observe/player/back/root