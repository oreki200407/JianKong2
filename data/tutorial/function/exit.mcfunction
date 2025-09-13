execute if entity @s[tag=tutorial_fixing_box] run function tutorial:box/fix/fix_mode/leave
execute if entity @s[tag=tutorial_unlock] run function tutorial:unlock/fail
execute if entity @s[tag=tutorial_trapped] run function tutorial:bear_trap/release

clear @s diamond
tag @s remove tutorial

tp @n[type=marker,tag=lobby_spawn]