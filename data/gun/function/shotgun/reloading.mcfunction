execute store success score #has_magazine reload run clear @s brick[item_name="散彈槍子彈"] 0
execute if score #has_magazine reload matches 0 run return run function gun:reloaded
execute unless items entity @s weapon golden_axe[item_name="散彈槍"] run return run function gun:reloaded

execute unless score @s reload matches 3 run playsound block.piston.contract ambient @s ~ ~ ~ 1 2
scoreboard players set @s reload 3
scoreboard players add @s reload_time 1

execute if entity @s[scores={reload_time=1..2}] run return run title @s actionbar [{"text":"裝彈中：","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=3..4}] run return run title @s actionbar [{"text":"裝彈中：▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=5..6}] run return run title @s actionbar [{"text":"裝彈中：▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=7..8}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=9..10}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=11..12}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=13..14}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=15..16}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=17..18}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=19..20}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬▬▬","color":"gold","bold": true},{"text":"▬","color":"gray","bold": true}]
execute if entity @s[scores={reload_time=21}] run return run title @s actionbar [{"text":"裝彈中：▬▬▬▬▬▬▬▬▬▬","color":"gold","bold": true}]

execute as @s[scores={reload_time=22}] at @s run function gun:shotgun/reloaded