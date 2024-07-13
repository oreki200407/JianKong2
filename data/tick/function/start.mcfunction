#遊戲進行中的tick

#死亡盔甲座
execute as @e[type=armor_stand, tag=death_stand] at @s if entity @a[team=survivor, gamemode=adventure, predicate=game:sneak, distance=..3] run function game:death/stand/saving

#捕獸夾
execute as @e[type=block_display, tag=trap] run function game:trap/trap_working
#被捕獸夾抓到的生物
execute as @e[tag=trapped] run function game:trap/trapped/root

execute as @a[team=survivor, scores={reloading=0..}] run function gun:smg/reload/reloading