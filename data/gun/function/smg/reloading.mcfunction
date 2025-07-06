execute store success score #has_magazine reload run clear @s iron_ingot[item_name="衝鋒槍彈夾"] 0
execute if score #has_magazine reload matches 0 run return run function gun:reloaded
execute unless items entity @s weapon golden_axe[item_name="衝鋒槍"] run return run function gun:reloaded

execute unless score @s reload matches 1 run playsound block.piston.contract ambient @s ~ ~ ~ 1 2
scoreboard players set @s reload 1
scoreboard players add @s reload_time 1

execute if entity @s[scores={reload_time=1..4}] run return run title @s actionbar [{"text":"裝彈中：","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=5..8}] run return run title @s actionbar [{"text":"裝彈中：▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=9..12}] run return run title @s actionbar [{"text":"裝彈中：▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=13..16}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=17..20}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=21..24}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=25..28}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=29..32}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=33..36}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=37..40}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=41}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬▬▬▬","color":"gold","bold": true}]

execute as @s[scores={reload_time=42}] at @s run function gun:smg/reloaded