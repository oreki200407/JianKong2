scoreboard players add @s ammo_smg 1
function gun:smg/ammo {ammo_smg:1}
function gun:smg/ammo {ammo_smg:2}
function gun:smg/ammo {ammo_smg:3}
function gun:smg/ammo {ammo_smg:4}
function gun:smg/ammo {ammo_smg:5}
function gun:smg/ammo {ammo_smg:6}
function gun:smg/ammo {ammo_smg:7}
function gun:smg/ammo {ammo_smg:8}
function gun:smg/ammo {ammo_smg:9}
function gun:smg/ammo {ammo_smg:10}
function gun:smg/ammo {ammo_smg:11}
function gun:smg/ammo {ammo_smg:12}
function gun:smg/ammo {ammo_smg:13}
function gun:smg/ammo {ammo_smg:14}
function gun:smg/ammo {ammo_smg:15}
function gun:smg/ammo {ammo_smg:16}
function gun:smg/ammo {ammo_smg:17}
function gun:smg/ammo {ammo_smg:18}
function gun:smg/ammo {ammo_smg:19}
function gun:smg/ammo {ammo_smg:20}
function gun:smg/ammo {ammo_smg:21}
function gun:smg/ammo {ammo_smg:22}
function gun:smg/ammo {ammo_smg:23}
function gun:smg/ammo {ammo_smg:24}
function gun:smg/ammo {ammo_smg:25}
function gun:smg/ammo {ammo_smg:26}
function gun:smg/ammo {ammo_smg:27}
function gun:smg/ammo {ammo_smg:28}
function gun:smg/ammo {ammo_smg:29}
function gun:smg/ammo {ammo_smg:30}
function gun:smg/ammo {ammo_smg:31}
function gun:smg/ammo {ammo_smg:32}

tag @s[tag=!shooter] add shooter
tp @s ~ ~ ~ ~ ~-1
playsound entity.generic.explode ambient @a ~ ~ ~ 1 2
execute anchored eyes positioned ^ ^ ^1 run function gun:smg/shoot