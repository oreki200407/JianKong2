advancement revoke @s only monster:enderman/hurt
execute as @e[tag=enderman,type=skeleton, nbt={HurtTime:10s},distance=..6] at @s run tp @s @e[tag=point,type=marker,limit=1,sort=random,distance=..10]