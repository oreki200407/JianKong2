tag @s remove power_damage

data remove block ~ ~ ~ Items
data remove block ~1 ~ ~ Items
setblock ~ ~ ~ chest[facing=south,type=right]{CustomName:"發電機",lock:{count:1,items:"air"}} destroy

playsound entity.player.levelup master @a[team=monitor]
setblock ~ ~1 ~ air

tellraw @a[team=monitor] ["◎ ",{"entity":"@s","nbt":"data.number"},"號發電機已", {"text": "維修完畢", "color":"gold"}]

execute if entity @s[tag=puzzle_game] run return run tag @s remove puzzle_game
execute if entity @s[tag=netwalk_game] run return run tag @s remove netwalk_game
tag @s remove light_game