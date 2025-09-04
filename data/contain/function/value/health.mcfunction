scoreboard players remove @s contain_health 1
function contain:update_text/health

execute if entity @s[scores={contain_health=8..}] run return fail
tellraw @a[team=monitor] ["◎ 注意, ",{"selector":"@s","color":"gold"},"的血量過低"]
execute at @s run playsound entity.player.breath ambient @a[team=monitor]