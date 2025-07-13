#超出範圍
execute unless entity @s[distance=..5] run return run title @s actionbar {text: "請對著地板放置", color: "red", bold: true}

#可以繼續往前
execute positioned ^ ^ ^.2 if function gun:can_through run return run function gadget:bear_trap/raycast

#不能再往前了 召喚
execute if block ~ ~-1 ~ air run return run title @s actionbar {text: "請對著地板放置", color: "red", bold: true}

clear @s tripwire_hook[item_name="捕獸夾"] 1
summon armor_stand ~ ~ ~ {Tags:["bear_trap_point"],NoBasePlate:1b,DisabledSlots:4144959,Small:1b,Invisible:1b,Invulnerable:1b,attributes:[{id:"explosion_knockback_resistance",base:1},{id:"gravity",base:1},{id: "scale", base: 0.0001}]}