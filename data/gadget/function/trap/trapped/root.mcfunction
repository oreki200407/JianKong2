###################################################
# 被捕獸夾抓到的實體的根函數
# 
# Name   : root.mcfunction
# Path   : gadget:trap/trapped/
# As     : 被捕獸夾抓到的實體
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#檢查是不是玩家 是的話就執行player
execute if entity @s[type=player] run return run function gadget:trap/trapped/player

#不是的話就執行mob
function gadget:trap/trapped/mob