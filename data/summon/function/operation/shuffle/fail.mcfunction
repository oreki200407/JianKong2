tellraw @s ["◎ 此怪物的刷新功能還在", {"text": "冷卻中", "color":"gold"}]
playsound entity.villager.no master @s
function summon:operation/reset
tag @e[tag=summon_shuffle,limit=1] remove summon_shuffle
tag @s remove summon_shuffler