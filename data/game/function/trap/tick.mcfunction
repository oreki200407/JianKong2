#捕獸夾工作中
execute as @e[type=block_display, tag=trap] run function game:trap/trap_working

#被抓到的生物
#這裡不必加上type=#game:trap_can_affect
execute as @e[tag=trapped] run function game:trap/trapped/root