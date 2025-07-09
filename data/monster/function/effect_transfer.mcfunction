#熾足獸
execute if entity @s[type=strider,tag=strider,team=survivor] run return run effect give @a[team=monitor,distance=..2.5] poison 3 1

#女巫
execute if entity @s[type=witch,tag=witch,team=survivor] run return run effect give @a[team=monitor,distance=..3] weakness 1 1 true

#狼
execute if entity @s[type=wolf,tag=wolf,team=survivor] unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @p[team=monitor] UUID