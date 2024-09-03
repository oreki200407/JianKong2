###################################################
# 利用choose.mcfunciton中記錄下的怪物名進行funciton呼叫
# 
# Name   : to.mcfunction
# Path   : morph:player/start/
# As     : 變形的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#剛剛choose已經紀錄了要變成什麼怪物了
$function morph:$(monster)/start

#複製冷卻到頭顱
item modify entity @s armor.head {function: "copy_custom_data", source: {type: "storage", source: "jk2:data"}, ops: [{op: "merge", source: "root.morph.cooldown", target: "{}"}]}