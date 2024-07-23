#遊戲進行中的tick

#中途加入
execute as @a[tag=!start] run function game:spectate

#鞭炮
execute as @e[type=snowball, tag=!checked] run function gadget:grenade/snowball
execute as @e[type=marker, tag=grenade_marker, predicate=!game:riding] at @s run function gadget:grenade/summon
execute as @e[type=item, tag=grenade, nbt={PortalCooldown: 0}] at @s run function gadget:grenade/explode

#死亡盔甲座
execute as @a[team=survivor, gamemode=adventure, predicate=game:sneak] at @s if entity @e[type=armor_stand, tag=death_stand, distance=..3] run function game:death/player/save/saving

#捕獸夾
execute as @e[type=block_display, tag=trap] run function gadget:trap/trap_working
#被捕獸夾抓到的生物
execute as @e[tag=trapped] run function gadget:trap/trapped/root

#開鎖器
execute as @a[tag=using_unlock] run function gadget:unlock/unlocking

#遠程武器
execute as @e[type=marker, tag=flame] at @s run function gun:flamethrower/flame/flying
execute as @a[team=survivor, scores={reload=1}] run function gun:smg/reloading
execute as @a[team=survivor, scores={reload=2}] run function gun:pistol/reloading
execute as @a[team=survivor, scores={reload=3}] run function gun:shotgun/reloading
scoreboard players remove @a[scores={gun_cooldown=1..}] gun_cooldown 1

#升級
execute as @a[team=survivor] at @s run function upgrade:root

#監控者與終界箱
execute as @a[team=monitor] run function summon:root

#使用監視器介面
execute as @a[scores={camera_interface=1..}] run function monitor:camera/camera_interface/root

#使用監視器中
execute as @a[tag=using_monitor, predicate=game:moving] run function monitor:observe/back/root