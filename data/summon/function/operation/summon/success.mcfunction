playsound entity.experience_orb.pickup ambient @s
scoreboard players operation 電力 info -= @s summon_power
scoreboard players reset @s summon_monster
function summon:reset