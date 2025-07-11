execute if entity @s[tag=monitor_tag] run return run function game:player_setting/adventure {team: "monitor"}
execute if entity @s[tag=survivor_tag] run return run function game:player_setting/adventure {team: "survivor"}
function game:player_setting/spectator