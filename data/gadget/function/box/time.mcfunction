scoreboard players remove @s system 1
execute if score @s system matches 1.. run return run data merge entity @s {text:{"score":{"name":"@s","objective":"system"}}}

execute as @a[team=survivor] if items entity @s enderchest.10 * run function box:switch/give with entity @s EnderItems[{Slot: 10b}]
function gadget:box/end