data merge entity @e[type=text_display,limit=1,tag=contain_freeze_text] {text:{color:"gold",text:"凍結生物",bold:1b}}
tag @s remove freeze
tellraw @a[team=monitor] ["◎ 生物已",{text:"解凍","color":"gold"}]