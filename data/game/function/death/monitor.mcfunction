###################################################
# 當監控者死亡的時候執行
# 
# Name   : root.mcfunction
# Path   : game:death/monitor
# As     : 血量歸零的監控者
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#如果處在變形狀態
execute if entity @s[tag=morph] run function morph:player/end/root