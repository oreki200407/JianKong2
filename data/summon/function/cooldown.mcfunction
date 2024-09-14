scoreboard players operation @s summon_count = @a[tag=summoner] summon_count
scoreboard players operation @s summon_cooldown = @s summon_count
scoreboard players operation @s summon_cooldown *= #200 summon_cooldown
execute at @e[tag=summon_point,sort=random,limit=1] run function summon:monster