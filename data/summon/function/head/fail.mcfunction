$execute unless score @e[type=armor_stand,tag=summon_pick,scores={summon_monster=$(head)},limit=1] summon_cooldown matches 1.. run return fail
tag @s add summon_fail
tellraw @s ["◎ 此怪物目前在", {"text": "冷卻中","color":"gold"}]
playsound entity.villager.no master @s
data remove storage jk2:data root.summon.head