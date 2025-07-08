scoreboard players add @e[tag=contain] contain_food 1

data modify entity @e[type=text_display, tag=contain_value_food,limit=1] text set value \
[\
	"飽食度\n",\
	{score:{name:"@e[type=villager, tag=contain_villager,limit=1,tag=contain]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[type=skeleton, tag=contain_skeleton,limit=1,tag=contain]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[type=cave_spider, tag=contain_spider,limit=1,tag=contain]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[type=zombie, tag=contain_zombie,limit=1,tag=contain]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[type=creeper, tag=contain_creeper,limit=1,tag=contain]",objective:"contain_food"}}\
]