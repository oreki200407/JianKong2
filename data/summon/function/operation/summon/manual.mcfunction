execute if score 電力 info < @s summon_power run return run function summon:operation/fail

tellraw @s ["","◎ 你已成功",{"text":"獲得怪物頭顱","color":"gold"},", 請使用",{"text":"監視器","color":"gold"},"來召喚怪物"]

execute store result storage jk2:data root.summon.manual.count int 1 run scoreboard players get @s summon_count

tag @s add summoner
execute as @e[type=armor_stand,tag=summon_pick] if score @s summon_monster = @a[tag=summoner,limit=1] summon_monster run function summon:manual/set
tag @s remove summoner

function summon:manual/give with storage jk2:data root.summon.manual
function summon:operation/summon/success