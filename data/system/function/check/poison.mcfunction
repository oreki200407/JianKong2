kill @e[tag=check_poison]
execute as @e[type=armor_stand,tag=poison_point] at @s run function system:check/poison_size with entity @s data
execute as @a at @s facing entity @n[type=armor_stand,tag=poison_point] feet run rotate @s ~ ~
playsound entity.experience_orb.pickup master @s