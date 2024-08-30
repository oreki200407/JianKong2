###################################################
# 將怪物歸還給可供變形的怪物陣列
# 
# Name   : return_monster.mcfunction
# Path   : morph:player/end/
# As     : 變形的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

$data modify storage jk2:data root.morph.monsters append from storage jk2:data root.morph.occupied."$(UUID)"
$data remove storage jk2:data root.morph.occupied."$(UUID)"