scoreboard players remove @s contain_food 1
data modify entity @e[type=text_display, tag=contain_value_food,limit=1] text set value \
[\
	"飽食度\n",\
	{score:{name:"@e[type=villager, tag=contain_villager,limit=1,tag=contain]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[type=skeleton, tag=contain_skeleton,limit=1,tag=contain]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[type=cave_spider, tag=contain_spider,limit=1,tag=contain]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[type=zombie, tag=contain_zombie,limit=1,tag=contain]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[type=creeper, tag=contain_creeper,limit=1,tag=contain]",objective:"contain_food"}}\
]

execute if entity @s[scores={contain_food=8..}] run return fail
tellraw @a[team=monitor] ["◎ 注意, ",{"selector":"@s","color":"gold"},"的飽食度過低"]
execute at @s run playsound entity.player.breath ambient @a[team=monitor]