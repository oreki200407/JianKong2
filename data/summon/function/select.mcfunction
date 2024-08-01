execute if items entity @s enderchest.1 air run data modify storage jk2:data root.summon.head set value 1
execute if items entity @s enderchest.2 air run data modify storage jk2:data root.summon.head set value 2
execute if items entity @s enderchest.3 air run data modify storage jk2:data root.summon.head set value 3
execute if items entity @s enderchest.4 air run data modify storage jk2:data root.summon.head set value 4
execute if items entity @s enderchest.5 air run data modify storage jk2:data root.summon.head set value 5
execute if items entity @s enderchest.6 air run data modify storage jk2:data root.summon.head set value 6
execute if items entity @s enderchest.7 air run data modify storage jk2:data root.summon.head set value 7

function summon:reset_select
playsound block.piston.extend ambient @s ~ ~ ~ 1 2
scoreboard players set @s summon_count 1
function summon:reset_head with storage jk2:data root.summon