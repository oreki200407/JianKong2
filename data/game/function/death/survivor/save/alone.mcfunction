#死透
scoreboard players operation #dead_player uuid0 = @s uuid0

#找到儲存的UUID跟死透的玩家UUID相同的展示實體
execute as @e[type=item_display, tag=tomb] if score @s uuid0_match = #dead_player uuid0 at @s run kill

title @s title {text: "你靠自己爬起來了", color: "red", bold: true}
tellraw @a ["◎ ", {selector: "@s"}, " 靠自己爬起來了"]
playsound entity.experience_orb.pickup ambient @s

function game:death/survivor/up