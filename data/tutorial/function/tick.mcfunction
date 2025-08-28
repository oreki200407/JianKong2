#開鎖器
execute as @a[tag=tutorial_unlock] run function tutorial:unlock/unlocking

execute as @e[type=item_display, tag=tutorial_bear_trap] run function tutorial:bear_trap/trap_working
execute as @e[tag=tutorial_trapped] run function tutorial:bear_trap/trapped