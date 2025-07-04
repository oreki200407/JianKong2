tag @s add temp

tellraw @s ["——————————\n",{text:"體溫&飽食度",color:gold},"的建議值: 15-25"]
execute as @e[tag=contain] run tellraw @a[tag=temp] ["",{selector:"@s",color:gold}, {text:"\n體溫: "},{score:{name:"@s",objective:"contain_temperature"}},{text:"  飽食度: "},{score:{name:"@s",objective:"contain_food"}},{text:"  血量: ","hover_event":{"action":"show_text","value":[{"text":"血量0將會死亡"}]}},{score:{name:"@s",objective:"contain_health"}}]
tellraw @s "——————————"
tag @s remove temp