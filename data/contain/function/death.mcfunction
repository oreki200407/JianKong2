###################################################
# 給原料的怪物死亡
# 
# Name   : death.mcfunction
# Path   : contain:
# As     : 給原料的怪物(@e[tag=contain]) 或 怪物對應的marker
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

tellraw @a[team=monitor] ["◎ ",{"selector":"@s","color":"gold"},"死亡了"]
kill @s[tag=contain]
setblock ~-2 ~-1 ~ oak_wall_sign[facing=west]{front_text:{messages:["",{bold:1b,text:"復活生物"},{bold:1b,click_event:{action:"run_command",command:"function contain:revive/check"},text:"花費：40電力"},""]},is_waxed:1b}