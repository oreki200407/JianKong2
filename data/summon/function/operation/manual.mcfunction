execute if score 電力 info < @s summon_power run return run tellraw @s ["◎ 召喚", {"text": "失敗", "color":"gold"}, ", 電力不足"]
playsound entity.experience_orb.pickup ambient @s
scoreboard players operation 電力 info -= @s summon_power