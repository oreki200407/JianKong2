setblock ~-1 ~-1 ~ redstone_block
setblock ~-1 ~2 ~3 redstone_block
summon area_effect_cloud ~-1 ~-1 ~ {PortalCooldown:30,Tags:["power1_time"],Particle:{type:"block",block_state:"minecraft:air"}, Radius: 0}