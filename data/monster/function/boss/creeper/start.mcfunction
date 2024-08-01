###################################################
# 召喚苦力怕boss
# 
# Name   : start.mcfunction
# Path   : monster:boss/creeper/
# As     : 打指令的玩家
# At     : 打指令的玩家
# Loop   : 否
# Author : Alex_Cai
###################################################

execute unless entity c2ee9e2-b-0-5-5 run summon creeper ~ ~ ~ {PersistenceRequired: true, powered: true, ignited: false, ExplosionRadius: 5, Health: 200, ArmorItems: [{}, {}, {}, {id: "creeper_head", components: {custom_data: {rotate: 0.0, range: 5.0}, enchantments: {levels: {vanishing_curse: 1}}}}], attributes: [{id: "generic.scale", base: 8}, {id: "generic.max_health", base: 200}], Passengers: [{id: "husk", PersistenceRequired: true, Invulnerable: true, Silent: true, IsBaby: true, active_effects: [{id: "invisibility", duration: -1, show_particles: false}], attributes: [{id: "generic.attack_damage", base: 0}, {id: "generic.scale", base: 0.0625}], DeathLootTable: "empty", Team: "monitor", Tags: ["riding_boss"]}], CustomName: '"苦力怕王"', CustomNameVisible: true, Team: "monitor", UUID: [I; 204401122, 720896, 327680, 5], Tags: ["boss"]}

#涉及到改UUID 還是別用execute summon了
execute as c2ee9e2-b-0-5-5 run function monster:boss/creeper/initial

bossbar set jk2:boss name "苦力怕王"
bossbar set jk2:boss max 200
bossbar set jk2:boss value 200
bossbar set jk2:boss players @a[team=survivor]

schedule function monster:boss/creeper/tick 2