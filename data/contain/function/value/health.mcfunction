scoreboard players remove @s contain_health 1
data modify entity @e[type=text_display, tag=contain_value_health,limit=1] text set value \
[\
	"血量\n",\
	{score:{name:"@e[type=villager, tag=contain_villager,limit=1,tag=contain]",objective:"contain_health"}}, "\n",\
	{score:{name:"@e[type=skeleton, tag=contain_skeleton,limit=1,tag=contain]",objective:"contain_health"}}, "\n",\
	{score:{name:"@e[type=cave_spider, tag=contain_spider,limit=1,tag=contain]",objective:"contain_health"}}, "\n",\
	{score:{name:"@e[type=zombie, tag=contain_zombie,limit=1,tag=contain]",objective:"contain_health"}}, "\n",\
	{score:{name:"@e[type=creeper, tag=contain_creeper,limit=1,tag=contain]",objective:"contain_health"}}\
]

execute if entity @s[scores={contain_health=8..}] run return fail
tellraw @a[team=monitor] ["◎ 注意, ",{"selector":"@s","color":"gold"},"的血量過低"]
execute at @s run playsound entity.player.breath ambient @a[team=monitor]