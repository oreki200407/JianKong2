#遊戲進行中的tick

#鞭炮
execute at @e[type=snowball] run kill @n[type=area_effect_cloud,tag=grenade_cloud]
execute as @e[type=area_effect_cloud,tag=grenade_cloud] at @s run function gadget:grenade/summon
execute at @e[type=snowball] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["grenade_cloud"]}
execute as @e[type=item,tag=grenade,nbt={PortalCooldown:0}] at @s run function gadget:grenade/explode

#死亡盔甲座
execute as @e[type=armor_stand, tag=death_stand] at @s if entity @a[team=survivor, gamemode=adventure, predicate=game:sneak, distance=..3] run function game:death/stand/saving

#捕獸夾
execute as @e[type=block_display, tag=trap] run function gadget:trap/trap_working
#被捕獸夾抓到的生物
execute as @e[tag=trapped] run function gadget:trap/trapped/root

execute as @a[team=survivor, scores={reloading=1..}] run function gun:reloading