execute on target run playsound ui.button.click master @s

execute if entity @s[tag=team_red] on target run team join survivor
execute if entity @s[tag=team_spec] on target run team join spec
execute if entity @s[tag=team_blue] on target run team join monitor
execute if entity @s[tag=team_leave] on target run team leave @s
execute if entity @s[tag=team_random] on target run function system:team
execute if entity @s[tag=difficulty_setting] run function system:difficulty/interaction

execute if entity @s[tag=money-] on target run function system:money/subtract
execute if entity @s[tag=money+] on target run function system:money/add

execute if entity @s[tag=box-] on target run function system:power/subtract
execute if entity @s[tag=box+] on target run function system:power/add

execute if entity @s[tag=camera_count-] on target run function system:camera_count/subtract
execute if entity @s[tag=camera_count+] on target run function system:camera_count/add

execute if entity @s[tag=check_book] on target run function system:check/book

execute if entity @s[tag=edit_enter] on target at @e[tag=control_panel] run function edit:enter

execute if entity @s[tag=enter_tutorial] on target run tp @s @e[type=marker,tag=tutorial_lobby,limit=1]

execute if entity @s[tag=start_button] on target run function game:setting

data remove entity @s interaction