execute if entity @s[level=..49] run return run function box:use/fail
xp add @s -50

execute at @e[tag=lobby] run fill ~2 ~ ~1 ~-2 ~ ~-1 water
scoreboard players set 水管爆裂 info_monitor 0
tellraw @a[team=monitor] ["◎ 求生者使用了電箱-", {"text": "水管爆裂", "color":"gold"},", 監控室淹水", {"text": "3分鐘", "color":"gold"}]

tellraw @s ["◎ 你已成功使用電箱-", {"text": "水管爆裂", "color":"gold"}]
playsound item.trident.hit_ground ambient @s