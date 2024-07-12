scoreboard players add @s ammo_smg 1
execute store result storage jk2:data root.gun.ammo_smg int 1 run scoreboard players get @s ammo_smg
function gun:smg/ammo with storage jk2:data root.gun

tag @s[tag=!shooter] add shooter
tp @s ~ ~ ~ ~ ~-1
playsound entity.generic.explode ambient @a ~ ~ ~ 1 2
execute anchored eyes positioned ^ ^ ^1 run function gun:smg/shoot