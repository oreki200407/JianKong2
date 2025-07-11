execute unless block ~-1 ~ ~ redstone_lamp[lit=false] run return fail
setblock ~-1 ~ ~ redstone_lamp[lit=true]
summon area_effect_cloud ~-1 ~ ~ {PortalCooldown:30,Tags:["power_time"],Particle:{type:"block",block_state:"minecraft:air"}, Radius: 0}

function power:success