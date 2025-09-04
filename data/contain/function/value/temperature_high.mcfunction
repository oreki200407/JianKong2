scoreboard players add @s contain_temperature 1
function contain:update_text/temperature

execute if entity @s[scores={contain_temperature=..32}] run return fail
tellraw @a[team=monitor] ["◎ 注意, ",{"selector":"@s","color":"gold"},"的體溫過高"]
execute at @s run playsound entity.player.breath ambient @a[team=monitor]