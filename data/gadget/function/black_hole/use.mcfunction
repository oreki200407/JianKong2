execute if predicate {condition: "entity_properties", entity: "this", predicate: {"nbt": "{PortalCooldown:0}"}} run return run kill

particle squid_ink ~ ~10 ~ .5 .5 .5 0.1 10 force

execute as @e[team=monitor,distance=..5] at @s facing entity @n[tag=black_hole,limit=1] feet if block ^ ^ ^.1 #air run tp ^ ^ ^.1