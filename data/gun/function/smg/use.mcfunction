scoreboard players add @s ammo_smg 1
execute store result storage jk2:data root.gun.ammo int 1 run scoreboard players get @s ammo_smg
function gun:ammo with storage jk2:data root.gun

tag @s[tag=!shooter] add shooter
tp @s ~ ~ ~ ~ ~-1
playsound ui.button.click ambient @a ~ ~ ~ 1 1.5
execute anchored eyes positioned ^ ^ ^1 run function gun:smg/shoot