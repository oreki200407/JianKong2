tag @s remove tutorial_unlock
execute at @s run playsound block.iron_door.close master @s ~ ~ ~ 1 2
tellraw @s ["◎ 你已離開", {text: "解鎖模式", color: "gold"}]
title @s actionbar ""