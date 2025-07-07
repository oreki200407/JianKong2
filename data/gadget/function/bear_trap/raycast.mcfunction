#超出範圍
execute unless entity @s[distance=..5] run return fail

#可以繼續往前
execute positioned ^ ^ ^.2 if function gun:can_through run return run function gadget:bear_trap/raycast

#不能再往前了 召喚
execute align xyz run function gadget:bear_trap/detect