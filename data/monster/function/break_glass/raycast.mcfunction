#超出範圍
execute unless entity @s[distance=..2.5] run return fail

#的確是玻璃
execute if block ~ ~ ~ #gadget:glass run return run function monster:break_glass/looking_at_glass

#還沒到 繼續往前
execute positioned ^ ^ ^.005 run function monster:break_glass/raycast