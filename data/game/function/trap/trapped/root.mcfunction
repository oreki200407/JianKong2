#檢查是不是玩家 是的話就執行player
execute if entity @s[type=player] run return run function game:trap/trapped/player

#不是的話就執行mob
function game:trap/trapped/mob