execute if entity @s[tag=tutorial_fixing_box] run function tutorial:box/fix/fix_mode/leave
execute if entity @s[tag=tutorial_unlock] run function tutorial:unlock/fail
execute if entity @s[tag=tutorial_trapped] run function tutorial:bear_trap/release

xp add @s -999 levels

tp @s @e[type=marker,tag=lobby_setting,limit=1]
clear @s diamond
clear @s iron_sword
tag @s remove tutorial