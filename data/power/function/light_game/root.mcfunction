#點燈遊戲
execute store success score @s light_game run clear @s coal 0
execute as @a[scores={light_game=1}] run return run function power:light_game/switch/root