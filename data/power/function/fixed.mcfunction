tag @s remove power_damage

data remove block ~ ~ ~ Items
data remove block ~1 ~ ~ Items
setblock ~ ~ ~ chest[facing=south,type=right]{CustomName:"發電機",lock:{count:1,items:"air"}} destroy

playsound entity.player.levelup ambient @a[team=monitor]
setblock ~ ~1 ~ air

tellraw @a[team=monitor] ["◎ ",{"entity":"@s","nbt":"data.number"},"號發電機已", {"text": "維修完畢", "color":"gold"}]