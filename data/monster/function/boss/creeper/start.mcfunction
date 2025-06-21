###################################################
# 召喚苦力怕boss
# 
# Name   : start.mcfunction
# Path   : monster:boss/creeper/
# As     : 打指令的玩家
# At     : 打指令的玩家
# Loop   : 否
# Author : Alex_Cai, oreki20
###################################################

execute unless entity c2ee9e2-b-0-5-5 run summon creeper ~ ~ ~ {Fuse: 40, PersistenceRequired: true, powered: true, ignited: false, Health: 200, data: {rotate: 0.0, range: 5.0}, attributes: [{id: "scale", base: 2}, {id: "max_health", base: 200}], Passengers: [{id: "husk", PersistenceRequired: true, Invulnerable: true, Silent: true, IsBaby: true, active_effects: [{id: "invisibility", duration: -1, show_particles: false}], attributes: [{id: "attack_damage", base: 0}, {id: "scale", base: 0.0625}], DeathLootTable: "summon:empty", Team: "monitor", Tags: ["riding_boss"]}], CustomName: "閃電苦力怕", CustomNameVisible: false, Team: "monitor", UUID: [I; 204401122, 720896, 327680, 5], Tags: ["boss"]}

#涉及到改UUID 還是別用execute summon了
execute as c2ee9e2-b-0-5-5 run function monster:boss/creeper/initial

schedule function monster:boss/creeper/tick 2