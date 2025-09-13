scoreboard players remove @s contain_food 1
function contain:update_text/food

execute if entity @s[scores={contain_food=8..}] run return fail
tellraw @a[team=monitor] ["◎ 注意, ",{"selector":"@s","color":"gold"},"的飽食度過低"]
execute at @s run playsound entity.player.breath master @a[team=monitor]