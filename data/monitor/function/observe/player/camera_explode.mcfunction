###################################################
# 監視器爆炸後玩家回去
# 
# Name   : camera_explode.mcfunction
# Path   : monitor:observe/player/
# As     : 看著爆炸監視器的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tellraw @s "爆炸"
function monitor:observe/player/back/root