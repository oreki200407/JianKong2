###################################################
# 毒氣的粒子效果和玩家偵測
# 
# Name   : poisoning.mcfunction
# Path   : control:poison/
# As     : 釋放毒氣的標記
# At     : 世界重生點
# Loop   : 是
# Author : oreki20
###################################################

$execute as @a[team=survivor,x=$(x),y=$(y),z=$(z),dx=$(dx),dy=$(dy),dz=$(dz),gamemode=adventure] unless items entity @s armor.head carved_pumpkin run function control:poison/warning
$particle dust{color:[0.000,1.000,0.000],scale:1} $(particle_x) $(particle_y) $(particle_z) $(particle_dx) $(particle_dy) $(particle_dz) 0.2 100 force