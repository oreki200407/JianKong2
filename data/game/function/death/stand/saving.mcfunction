#3秒復活
scoreboard players add @s revive_time 1

title @s[scores={revive_time=1..6}] actionbar ["",{"text":"救援中：","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={revive_time=7..12}] actionbar ["",{"text":"救援中：▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={revive_time=13..18}] actionbar ["",{"text":"救援中：▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={revive_time=19..24}] actionbar ["",{"text":"救援中：▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={revive_time=25..30}] actionbar ["",{"text":"救援中：▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={revive_time=31..36}] actionbar ["",{"text":"救援中：▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={revive_time=37..42}] actionbar ["",{"text":"救援中：▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬","color":"gray","bold": true}]
title @s[scores={revive_time=43..48}] actionbar ["",{"text":"救援中：▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬","color":"gray","bold": true}]
title @s[scores={revive_time=49..54}] actionbar ["",{"text":"救援中：▬▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬","color":"gray","bold": true}]
title @s[scores={revive_time=55..60}] actionbar ["",{"text":"救援中：▬▬▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬","color":"gray","bold": true}]
title @s[scores={revive_time=61}] actionbar ["",{"text":"救援中：▬▬▬▬▬▬▬▬▬▬","color":"gold","bold": true}]
title @s[scores={revive_time=62}] actionbar ""

execute if score @s revive_time matches 62 as @e[type=armor_stand, tag=death_stand, distance=..3] run function game:death/stand/revive