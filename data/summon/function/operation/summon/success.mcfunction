playsound entity.experience_orb.pickup master @s
scoreboard players operation 電力 info_monitor -= @s summon_power

execute as @a[team=monitor] if score @s summon_monster = @a[tag=summoner,limit=1] summon_monster run function summon:open_ender_chest