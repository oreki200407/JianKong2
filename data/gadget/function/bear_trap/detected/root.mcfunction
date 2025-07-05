###################################################
# 捕獸夾偵測到實體時執行的函數
# 
# Name   : root.mcfunction
# Path   : gadget:bear_trap/detected/
# As     : 捕獸夾偵測到的實體
# At     : 捕獸夾方塊展示實體 align xyz
# Loop   : 否
# Author : Alex_Cai
###################################################

#是旁觀者就算了
execute if entity @s[gamemode=spectator] run return fail

#被抓到了
tag @s add trapped

#禁止移動和跳躍
playsound item.shield.break ambient @a ~ ~ ~ 1 0
execute if entity @s[type=player] run function gadget:bear_trap/detected/player
execute if entity @s[type=!player] run function gadget:bear_trap/detected/mob

return 100