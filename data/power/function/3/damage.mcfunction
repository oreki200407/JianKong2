playsound item.shield.break ambient @a[team=monitor]
tellraw @a[team=monitor] ["◎ 3號發電機", {"text": "已損壞", "color":"gold"}, ", 請盡快維修"]
tag @s add light_game
data remove block ~ ~ ~ lock
function power:light_game/reset/root