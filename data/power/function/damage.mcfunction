playsound item.shield.break ambient @a[team=monitor]
tellraw @a[team=monitor] ["◎ ",{"entity":"@s","nbt":"data.number"},"號發電機", {"text": "已損壞", "color":"gold"}, ", 請盡快維修"]
tag @s add power_damage
data remove block ~ ~ ~ lock

setblock ~ ~1 ~ oak_wall_sign[facing=south]{front_text:{messages:["",{"text":"修復發電機","bold":true,"click_event":{"action":"run_command","command":"execute if score 電力 info matches ..29 run return run tellraw @s [\"◎ 電力不足, \", {\"text\": \"無法修復\", \"color\":\"gold\"}]"}},{"text":"花費: 30電力","bold":true,"click_event":{"action":"run_command","command":"execute if score 電力 info matches 30.. run function power:fix_buy"}},""]},is_waxed:1b}

execute if entity @s[tag=power1] run return run function power:puzzle_game/reset/root
execute if entity @s[tag=power2] run return run function power:netwalk_game/reset/root
execute if entity @s[tag=power3] run function power:light_game/reset/root