execute unless score 電力 info matches 10.. run return run function summon:operation/fail

tag @s add summon_shuffler
execute as @e[type=armor_stand,tag=summon_picked] if score @s summon_monster = @a[tag=summon_shuffler,limit=1] summon_monster run tag @s add summon_shuffle
execute if entity @e[type=armor_stand,tag=summon_shuffle,tag=summon_pick_easy] as @e[type=armor_stand,tag=!summon_picked,tag=summon_pick_easy,sort=random,limit=1] run function summon:operation/shuffle/monster
execute if entity @e[type=armor_stand,tag=summon_shuffle,tag=summon_pick_medium] as @e[type=armor_stand,tag=!summon_picked,tag=summon_pick_medium,sort=random,limit=1] run function summon:operation/shuffle/monster
execute if entity @e[type=armor_stand,tag=summon_shuffle,tag=summon_pick_hard] as @e[type=armor_stand,tag=!summon_picked,tag=summon_pick_hard,sort=random,limit=1] run function summon:operation/shuffle/monster
execute as @e[type=armor_stand,tag=summon_shuffle] run function summon:pick/reset
tag @s remove summon_shuffler

tellraw @s ["◎ 你已成功", {"text": "刷新怪物", "color":"gold"}]
scoreboard players remove 電力 info 10
playsound entity.player.swim ambient @s
scoreboard players reset @s summon_monster
function summon:reset