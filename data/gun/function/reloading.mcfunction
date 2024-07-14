execute unless items entity @s container.* nether_brick run return run function gun:reload_fail

scoreboard players add @s reload_time 1

title @s[scores={reload_time=1..6}] actionbar ["",{"text":"裝彈中：","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={reload_time=7..12}] actionbar ["",{"text":"裝彈中：▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={reload_time=13..18}] actionbar ["",{"text":"裝彈中：▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={reload_time=19..24}] actionbar ["",{"text":"裝彈中：▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={reload_time=25..30}] actionbar ["",{"text":"裝彈中：▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={reload_time=31..36}] actionbar ["",{"text":"裝彈中：▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬","color":"gray","bold": true}]
title @s[scores={reload_time=37..42}] actionbar ["",{"text":"裝彈中：▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬","color":"gray","bold": true}]
title @s[scores={reload_time=43..48}] actionbar ["",{"text":"裝彈中：▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬","color":"gray","bold": true}]
title @s[scores={reload_time=49..54}] actionbar ["",{"text":"裝彈中：▬▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬","color":"gray","bold": true}]
title @s[scores={reload_time=55..60}] actionbar ["",{"text":"裝彈中：▬▬▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬","color":"gray","bold": true}]
title @s[scores={reload_time=61}] actionbar ["",{"text":"裝彈中：▬▬▬▬▬▬▬▬▬▬","color":"gold","bold": true}]
title @s[scores={reload_time=62}] actionbar ""

execute as @s[scores={reload_time=62}] run function gun:reloaded