data merge entity @s {DeathLootTable:"summon:empty",Team:"survivor"}
execute on passengers run kill @s[tag=!monster, tag=monster_ride]
tp @s[tag=!monster_ride] @e[type=marker,tag=lobby,limit=1]