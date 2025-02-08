#加入觀戰
team join spec
gamemode spectator
effect give @s night_vision infinite 0 true
tp @s @r[team=!spec]
tag @s add start

execute if score #mode system matches 4 run bossbar set jk2:prepare players @a
execute if score #mode system matches 3 run bossbar set jk2:time players @a