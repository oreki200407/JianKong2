execute on target run playsound ui.button.click master @s

execute if entity @s[tag=tutorial_info_power1] on target run function tutorial:info/power1
execute if entity @s[tag=tutorial_info_power2] on target run function tutorial:info/power2
execute if entity @s[tag=tutorial_info_power3] on target run function tutorial:info/power3

execute if entity @s[tag=tutorial_info_box] on target run function tutorial:info/box
execute if entity @s[tag=tutorial_info_unlock] on target run function tutorial:info/unlock
execute if entity @s[tag=tutorial_info_hammer] on target run function tutorial:info/hammer
execute if entity @s[tag=tutorial_info_player] on target run function tutorial:info/player
execute if entity @s[tag=tutorial_info_bear_trap] on target run function tutorial:info/bear_trap

data remove entity @s interaction