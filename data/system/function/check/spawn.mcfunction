execute as @a facing entity @e[tag=spawn_survivor,type=armor_stand,limit=1] feet run rotate @s ~ ~
effect give @e[tag=spawn_survivor,type=armor_stand,limit=1] glowing
playsound entity.experience_orb.pickup ambient @s