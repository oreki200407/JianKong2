execute on origin if entity @s[team=survivor] run return fail
execute on origin if entity @s[team=monitor,tag=!monster,tag=!using_camera] run return fail

tag @s add dropped
data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0
execute on origin run tp @e[tag=dropped,type=item] @s