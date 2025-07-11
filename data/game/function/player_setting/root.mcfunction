clear
effect clear
recipe take @s *
xp set @s 0 levels
xp set @s 0 points
scoreboard players reset @s

title @s times 0 40 0
execute at @s run playsound block.sculk_shrieker.shriek ambient
title @s title {"text":"監控圍城 II","color":"blue","bold":true}

execute if entity @s[tag=monitor_tag] run return run function game:player_setting/adventure {team: "monitor"}
execute if entity @s[tag=survivor_tag] run return run function game:player_setting/adventure {team: "survivor"}
function game:player_setting/spectator