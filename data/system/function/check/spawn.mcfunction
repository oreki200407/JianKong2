execute as @a facing entity @e[type=armor_stand,tag=spawn_survivor,limit=1] feet run rotate @s ~ ~
effect give @e[type=armor_stand,tag=spawn_survivor,limit=1] glowing
playsound entity.experience_orb.pickup ambient @s