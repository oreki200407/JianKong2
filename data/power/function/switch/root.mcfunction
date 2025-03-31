execute at @e[type=armor_stand,tag=power] run fill ~ ~ ~ ~ ~1 ~ air
tag @e[type=armor_stand,tag=power_point,tag=!power,sort=random,limit=1] add power_switch
tag @e[type=armor_stand,tag=power,limit=1] remove power
tag @e[type=armor_stand,tag=power_point,limit=1] add power
execute at @e[type=armor_stand,tag=power] run function power:switch/set
tag @e[type=armor_stand,tag=power_switch] remove power_switch