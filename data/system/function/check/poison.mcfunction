kill @e[tag=check_poison]
execute as @e[tag=poison_point,type=armor_stand] at @s run function system:check/poison_size with entity @s data
execute as @a at @s facing entity @n[tag=poison_point,type=armor_stand] feet run rotate @s ~ ~
playsound entity.experience_orb.pickup ambient @s