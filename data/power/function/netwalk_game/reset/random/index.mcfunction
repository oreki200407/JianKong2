###################################################
# 從0到random_maximum中隨機選擇一個數字
# 
# Name   : index.mcfunction
# Path   : power:netwalk_game/reset/random/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#隨機選擇
$return run random value 0..$(random_maximum)