#交換隊伍

#重置怪物
scoreboard players reset #summon_pick_release summon_monster
execute as @e[type=armor_stand,tag=summon_picked] run function summon:pick/reset
#設定初始怪物
execute as @e[type=armor_stand,tag=summon_pick,scores={summon_number=1..7}] run function summon:pick/setting