execute unless items entity @s container.* nether_brick[item_name="手槍彈夾"] run return run function gun:reloaded
execute unless items entity @s weapon golden_axe[item_name="手槍"] run return run function gun:reloaded

execute unless score @s reload matches 2 run playsound block.piston.contract ambient @s ~ ~ ~ 1 2
scoreboard players set @s reload 2
scoreboard players add @s reload_time 1

execute if entity @s[scores={reload_time=1..6}] run return run title @s actionbar [{"text":"裝彈中：","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=7..12}] run return run title @s actionbar [{"text":"裝彈中：▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=13..18}] run return run title @s actionbar [{"text":"裝彈中：▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=19..24}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=25..30}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=31..36}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=37..42}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=43..48}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=49..54}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=55..60}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=61}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬▬▬▬","color":"gold","bold": true}]

execute as @s[scores={reload_time=62}] at @s run function gun:pistol/reloaded