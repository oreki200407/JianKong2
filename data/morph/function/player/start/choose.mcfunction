###################################################
# 從陣列中提取出要變形的怪物
# 
# Name   : choose.mcfunction
# Path   : morph:player/start/
# As     : 變形的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

#記錄下變了什麼怪物
$item modify entity @s armor.head {function: "copy_custom_data", source: {type: "storage", source: "jk2:data"}, ops: [{op: "replace", source: "root.morph.monsters[$(index)]", target: "monster"}]}

#將這種怪物從可變清單中移除
$data remove storage jk2:data root.morph.monsters[$(index)]