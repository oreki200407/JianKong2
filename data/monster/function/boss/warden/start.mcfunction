###################################################
# 召喚伏守者boss
# 
# Name   : start.mcfunction
# Path   : monster:boss/warden/
# As     : 打指令的玩家
# At     : 打指令的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

execute unless entity 44a2de4-b-0-5-5 run summon warden ~ ~ ~ {PersistenceRequired: true, DeathLootTable: "summon:empty", Team: "monitor", UUID: [I; 71970276, 720896, 327680, 5], Tags: ["boss"]}
execute as 44a2de4-b-0-5-5 run function monster:boss/warden/initial

schedule function monster:boss/warden/tick 1