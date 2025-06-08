#超出範圍
execute unless entity @s[distance=..5] run return fail

#不是空氣 召喚
execute unless block ^ ^ ^1 #air unless block ^ ^ ^1 #doors[open=true] align xyz run return run function gadget:bear_trap/detect

#還沒到 繼續往前
execute positioned ^ ^ ^.2 run function gadget:bear_trap/raycast