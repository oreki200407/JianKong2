###################################################
# 利用choose.mcfunciton中記錄下的怪物名進行funciton呼叫
# 
# Name   : to.mcfunction
# Path   : morph:player/start/
# As     : 變形的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

#剛剛choose已經紀錄了要變成什麼怪物了

#給技能物品
$function morph:$(monster)/skill/give_1
$function morph:$(monster)/skill/give_2

#開始
$function morph:$(monster)/start