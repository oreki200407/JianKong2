#拼圖遊戲
execute store success score @s puzzle_game run clear @s coal 0
execute as @a[scores={puzzle_game=1}] run return run function power:puzzle_game/switch/root