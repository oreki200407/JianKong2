###################################################
# 從陣列中提取出要變形的怪物
# 
# Name   : choose.mcfunction
# Path   : morph:player/start/
# As     : 變形的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#等一下要執行的函數
$data modify storage jk2:data root.morph.player.start_function set from storage jk2:data root.morph.monsters[$(index)]
#記錄下變了什麼怪物
$data modify storage jk2:data root.morph.occupied."$(uuid)" set from storage jk2:data root.morph.player.start_function
#將這種怪物從可變清單中移除
$data remove storage jk2:data root.morph.monsters[$(index)]