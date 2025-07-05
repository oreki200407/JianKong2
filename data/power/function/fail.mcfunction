setblock ~-1 ~ ~ redstone_lamp[lit=false]
execute if entity @s[tag=power_auto] run setblock ~-1 ~ ~ shroomlight
playsound block.fire.extinguish ambient @a[team=monitor]
particle smoke ~ ~0.5 ~ 0.2 0.1 0.1 0.1 10 force