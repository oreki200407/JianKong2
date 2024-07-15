###################################################
# 捕獸夾抓到怪物時執行的函數
# 
# Name   : mob.mcfunction
# Path   : gadget:trap/detected/
# As     : 捕獸夾抓到的怪物
# At     : 捕獸夾方塊展示實體 align xyz
# Loop   : 否
# Author : Alex_Cai
###################################################

#如果是怪物被抓到
attribute @s generic.jump_strength modifier add jk2:trap -1 add_multiplied_base
scoreboard players set @s trap 0