scoreboard players add @s ammo_pistol 1
execute store result storage jk2:data root.gun.ammo int 1 run scoreboard players get @s ammo_pistol
function gun:ammo with storage jk2:data root.gun

tag @s[tag=!shooter] add shooter
tp @s ~ ~ ~ ~ ~-1
playsound entity.generic.explode ambient @a ~ ~ ~ 1 2
execute anchored eyes positioned ^ ^ ^1 run function gun:pistol/shoot