###################################################
# 更新怪物的飽食度顯示
# 
# Name   : food.mcfunction
# Path   : contain:update_text/
# As     : 給原料的怪物(@e[tag=contain]) 或 怪物對應的marker
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

data modify entity @e[tag=contain_value_food, type=text_display, limit=1] text set value \
[\
	"飽食度\n",\
	{score:{name:"@e[tag=contain_villager, tag=contain, tag=!freeze, type=villager,    limit=1]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[tag=contain_skeleton, tag=contain, tag=!freeze, type=skeleton,    limit=1]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[tag=contain_spider,   tag=contain, tag=!freeze, type=cave_spider, limit=1]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[tag=contain_zombie,   tag=contain, tag=!freeze, type=zombie,      limit=1]",objective:"contain_food"}}, "\n",\
	{score:{name:"@e[tag=contain_creeper,  tag=contain, tag=!freeze, type=creeper,     limit=1]",objective:"contain_food"}}\
]