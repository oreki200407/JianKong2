tellraw @a[team=monitor] ["◎ ",{"selector":"@s","color":"gold"},"死亡了"]
kill @s[tag=contain]
setblock ~-2 ~-1 ~ oak_wall_sign[facing=west]{front_text:{messages:["",{bold:1b,text:"復活生物"},{bold:1b,click_event:{action:"run_command",command:"function contain:revive"},text:"花費：40電力"},""]},is_waxed:1b}