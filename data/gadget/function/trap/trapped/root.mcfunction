#檢查是不是玩家 是的話就執行player
execute if entity @s[type=player] run return run function gadget:trap/trapped/player

#不是的話就執行mob
function gadget:trap/trapped/mob