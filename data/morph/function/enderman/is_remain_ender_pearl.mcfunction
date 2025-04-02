###################################################
# 是否是剛才要檢測的對象
# 
# Name   : is_remain_ender_pearl.mcfunction
# Path   : morph:enderman/
# As     : 終界珍珠
# At     : 變形成終界使者的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

execute on origin if entity @s[tag=enderman_end] run return 100

return fail