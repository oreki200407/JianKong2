
#有釘木板就算了
execute if block ~1 ~ ~ oak_sign run return fail
execute if block ~-1 ~ ~ oak_sign run return fail
execute if block ~ ~ ~1 oak_sign run return fail
execute if block ~ ~ ~-1 oak_sign run return fail

execute align xyz positioned ~.5 ~.5 ~.5 run function monster:break_glass/glass_position