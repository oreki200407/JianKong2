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

#複製技能冷卻數值到頭顱
$item modify entity @s armor.head {function: "copy_custom_data", source: {type: "storage", source: "jk2:data"}, ops: [{op: "replace", source: "root.morph.cooldown.$(monster)", target: "cooldown"}]}

#開始
$function morph:$(monster)/start