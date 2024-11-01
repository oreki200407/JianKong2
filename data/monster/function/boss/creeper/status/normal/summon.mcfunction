###################################################
# 召喚苦力怕小兵
# 
# Name   : summon.mcfunction
# Path   : monster:boss/creeper/status/normal/
# As     : 苦力怕boss
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

$execute rotated $(rotate) 0 run summon creeper ^ ^ ^$(range) {Team:"monitor",DeathLootTable:"summon:loot",PersistenceRequired:1b,CanPickUpLoot:0b,Health:10f,ExplosionRadius:2b,Fuse:10,Tags:["monster"],attributes:[{id:"scale",base:0.5},{id:"follow_range",base:50},{id:"movement_speed",base:0.43d}]}