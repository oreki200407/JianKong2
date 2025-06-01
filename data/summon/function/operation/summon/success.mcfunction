playsound entity.experience_orb.pickup ambient @s
scoreboard players operation 電力 info_monitor -= @s summon_power
scoreboard players reset @s summon_monster
function summon:reset