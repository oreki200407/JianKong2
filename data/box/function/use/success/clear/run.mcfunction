execute if entity @s[type=player] unless score @s morph matches 1.. run return fail

data modify entity @s[type=!player] DeathLootTable set value "summon:empty"
kill