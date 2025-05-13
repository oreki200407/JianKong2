#電線遊戲
execute store success score @s wire_game run clear @s string 0
execute as @a[scores={wire_game=1}] run return run function wire_game:switch/root