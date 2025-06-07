tag @s add temp
tellraw @s ["——————————\n室溫: ",{score:{name:"#room",objective:"contain_temperature"}}]
execute as @e[tag=contain] run tellraw @a[tag=temp] [{selector:"@s"}, {text:"\n體溫: ","hover_event":{"action":"show_text","value":[{"text":"建議值: 15-25"}]}},{score:{name:"@s",objective:"contain_temperature"}},{text:"  飽食度: ","hover_event":{"action":"show_text","value":[{"text":"建議值: 15-25"}]}},{score:{name:"@s",objective:"contain_food"}},{text:"  飽食度: ","hover_event":{"action":"show_text","value":[{"text":"血量0將會死亡"}]}},{score:{name:"@s",objective:"contain_health"}}]
tellraw @s "——————————"
tag @s remove temp