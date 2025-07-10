advancement revoke @s only monster:spider/attack
execute if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {PortalCooldown:60,Tags:["cobweb"],Particle:{type:"block",block_state:"minecraft:air"}, Radius: 0}
execute unless block ~ ~ ~ air if block ~ ~1 ~ air run summon area_effect_cloud ~ ~1 ~ {PortalCooldown:60,Tags:["cobweb"],Particle:{type:"block",block_state:"minecraft:air"}, Radius: 0}
execute as @n[type=area_effect_cloud, tag=cobweb] at @s run setblock ~ ~ ~ cobweb