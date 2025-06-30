advancement revoke @s only monster:enderman/hurt
execute as @e[type=skeleton, tag=enderman,nbt={HurtTime:10s},distance=..6] at @s run tp @s @e[type=marker,tag=point,limit=1,sort=random,distance=..10]