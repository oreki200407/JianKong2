scoreboard players remove #room contain_temperature 1
execute if score #room contain_temperature matches ..9 run scoreboard players set #room contain_temperature 10
data merge entity @e[type=text_display,tag=contain_temperature,limit=1] {text:[{"score":{"name":"#room","objective":"contain_temperature"},color:gold,bold:1b}]}