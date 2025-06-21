advancement revoke @s only monster:spider
execute if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["sticky"]}
execute unless block ~ ~ ~ air if block ~ ~1 ~ air run summon area_effect_cloud ~ ~1 ~ {Duration:2000000000,Tags:["sticky"]}
execute as @e[type=area_effect_cloud, tag=sticky] at @s run setblock ~ ~ ~ cobweb